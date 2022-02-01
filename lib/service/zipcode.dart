import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/entity/zip_api_result.dart';
import 'package:http/http.dart' as http;


// 画面以外の処理をまとめたファイル
final zipcodeProvider = StateProvider((ref) => '0010000');

final searchResultProvider = FutureProvider<ZipApiResult>((ref) async {
  final zip = ref.watch(zipcodeProvider);
  final url =
  Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zip');
  final response = await http.get(url);

  final decodedJson = json.decode(response.body) as Map<String, dynamic>;
  if(decodedJson['status'] == 400){
    print('zip api error');
    return ZipApiResult(status: response.statusCode);
  }else{
    final zipResult = ZipApiResult.fromJson(decodedJson);
    return zipResult;
  }
});
