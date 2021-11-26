import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final mealProvider = StateProvider<Map<String, int>>((ref) => {
  'taste_type': 0,
  'meal_type': 0,
  'timing': 1,
});

final dropdownProvider = Provider<List<String>>((ref) => <String>['A', 'B', 'C']);
// final dropdownProvider = Provider<Map<String, int>>((ref) => {
//   'breakfast': 1,
//   'lunch': 2,
//   'dinner': 3,
//   'snack': 4
// });


final updateCountProvider = StateProvider((ref) => 0);

final mealHistoryProvider = FutureProvider<Map<String, Object?>>((ref) async {
  final mp = ref.watch(updateCountProvider);
  final mealHistory = MealHistoryService();
  final response = mealHistory.getHistories();

  return response;
});


// model
class MealHistory {
  MealHistory({required this.id, required this.description});

  final int id;
  final String description;

  // factory MealHistory.fromJson(Map<String, Object?> json) {
  //   return MealHistory(
  //     id: json['id'],
  //     description: json['description'],
  //   );
  // }
}

class MealHistoryService {
  Future<Map<String, Object?>> postHistory(String description) async {
    final headers = <String, String>{'content-type': 'application/json'};
    final body = json.encode({
      'user_id': '1',
      'timing': 1,
      'meal_type_id': 1,
      'taste_type_id': 1,
      'description': description
    });
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.post(url, headers: headers, body: body);
    return json.decode(response.body) as Map<String, Object?>;
  }

  Future<Map<String, Object?>> getHistories() async {
    final headers = <String, String>{'content-type': 'application/json'};
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/meal_histories');
    final response = await http.get(url, headers: headers);
    print('------ mealHistory index API called -------');
    print('status: ${response.statusCode}');
    return json.decode(response.body) as Map<String, Object?>;
  }

  void fetch() async {
  }
}
