import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_history.freezed.dart';
part 'meal_history.g.dart';

@freezed
class MealHistory with _$MealHistory {
  const factory MealHistory({
    int? id,
    String? timing,
    String? description,
    String? meal_type_name,
    String? taste_type_name,

  }) = Data;
  factory MealHistory.fromJson(Map<String, dynamic> json) => _$MealHistoryFromJson(json);
}