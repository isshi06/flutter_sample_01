import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/entity/meal_history.dart';
import 'package:http/http.dart' as http;

final mealProvider = StateProvider<Map<String, int>>((ref) => {
  'taste_type': 0,
  'meal_type': 0,
  'timing': 1,
});

final dropdownProvider = Provider<List<String>>((ref) => <String>['breakfast', 'lunch', 'dinner', 'snack']);

final dropdownSelectedProvider = StateProvider<String?>((ref) => 'breakfast');

// 画面更新用Provider
final updateCountProvider = StateProvider((ref) => 0);

final mealHistoryProvider = FutureProvider<List<MealHistory>?>((ref) async {
  final headers = <String, String>{'content-type': 'application/json'};
  final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
  final response = await http.get(url, headers: headers);
  print('------ mealHistory index API called -------');
  final decodedJson = json.decode(response.body) as Map<String, Object?>;
  if(response.statusCode == 200){
    final mealHistory = MealHistory.fromJson(decodedJson);
    print(mealHistory);
    return List.empty();
  }else{
    print('zip api error');
    return List.empty();
  }
});

class MealHistoryService {
  Future<Map<String, Object?>> postHistory(String description, String timing) async {
    final headers = <String, String>{'content-type': 'application/json'};
    final body = json.encode({
      'user_id': '1',
      'timing': timing,
      'meal_type_id': 1,
      'taste_type_id': 1,
      'description': description
    });
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.post(url, headers: headers, body: body);
    return json.decode(response.body) as Map<String, Object?>;
  }

  Future<List<MealHistory>?> getHistories() async {
    final headers = <String, String>{'content-type': 'application/json'};
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.get(url, headers: headers);
    print('------ mealHistory index API called -------');
    final decodedJson = json.decode(response.body) as Map<String, Object?>;
    final mealHistoryList = List<MealHistory>.empty();
    if(response.statusCode == 200){
      final mealHistory = MealHistory.fromJson(decodedJson);
      return List.empty();
    }else{
      print('zip api error');
      return List.empty();
    }
  }

  void fetch() async {
  }
}
