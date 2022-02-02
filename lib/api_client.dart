import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

enum Env {
  local,
  stg,
  production,
}

extension EnvExtension on Env {
  static const _authority = {
    Env.local: 'ローカルのパス',
    Env.stg: 'ステージングのパス',
    Env.production: '本番のパス'
  };

  String get authority => _authority[this]!;
}

typedef Callback = Future<http.Response> Function();
typedef JsonMap = Map<String, dynamic>;
JsonMap parseJsonMap(String input) => json.decode(input) as JsonMap;

// API処理をラップしたい(未使用)
class ApiClient {
  factory ApiClient() => _cache;
  ApiClient._internal(this.env);
  static final ApiClient _cache = ApiClient._internal(Env.stg);

  final Env env;

  static const _headers = <String, String>{
    'Content-Type': 'application/json',
  };

  Future<http.Response> _safeApiCall(Callback callback) async {
    try {
      return await callback();
    } on SocketException {
      throw Exception('No Internet Connection');
    }
  }

  Uri _uri(
      String path, {
        Map<String, String>? queryParameters,
      }) {
    final apiPath = '/api$path';
    switch (env) {
      case Env.local:
        return Uri.http(
          env.authority,
          apiPath,
          queryParameters,
        );
      case Env.stg:
      case Env.production:
        return Uri.https(
          env.authority,
          apiPath,
          queryParameters,
        );
    }
  }

  Future<http.Response> get(
      String path, {
        Map<String, String>? queryParameters}) async {
    final url = _uri(path, queryParameters: queryParameters);
    return _safeApiCall(
          () async => http.get(
        url,
        headers: _headers,
      ),
    );
  }

  Future<http.Response> post(String path, {Map<String, String>? body}) async {
    final url = _uri(path);
    return _safeApiCall(
          () async => http.post(
        url,
        headers: _headers,
        body: body,
      ),
    );
  }
}
