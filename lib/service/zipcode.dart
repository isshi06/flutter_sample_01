import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final zipcodeProvider = StateProvider((ref) => '0010000');

final searchResultProvider = FutureProvider<Map<String, Object?>>((ref) async {
  final zip = ref.watch(zipcodeProvider);
  final url =
  Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zip');
  final response = await http.get(url);
  print('^^^^^^^^^^^^^');
  print(response);
  return json.decode(response.body) as Map<String, Object?>;
});

class ZipcodeService {

}