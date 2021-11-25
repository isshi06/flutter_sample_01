import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final mealProvider = StateProvider((ref) => '');

final mealHistoryProvider = FutureProvider<Map<String, Object?>>((ref) async {
  print('mealHistoryProvider');
  final headers = <String, String>{'content-type': 'application/json'};
  final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
  final response = await http.get(url, headers: headers);
  print(response.body);
  return json.decode(response.body) as Map<String, Object?>;
});

class MealHistoryService {
  Future<Map<String, Object?>> postHistory() async {
    final headers = <String, String>{'content-type': 'application/json'};
    final body = json.encode({
      'user_id': '1',
      'timing': 1,
      'meal_type_id': 1,
      'taste_type_id': 1,
      'description': 'おいしいパン'
    });
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.post(url, headers: headers, body: body);
    return json.decode(response.body) as Map<String, Object?>;
  }

  Future<Map<String, Object?>> fetch() async {
    final headers = <String, String>{'content-type': 'application/json'};
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.get(url, headers: headers);
    return json.decode(response.body) as Map<String, Object?>;
  }
}
