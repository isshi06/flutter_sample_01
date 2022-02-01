import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_history.freezed.dart';
part 'meal_history.g.dart';

// モデルクラスのような、型定義ファイル(多分)
@freezed
class MealHistory with _$MealHistory {
  const MealHistory._();
  const factory MealHistory({
    @Default(0) int id,
    @Default('') String timing,
    @Default('') String description,
    @Default('') String mealTypeName,
    @Default('') String tasteTypeName,
  }) = Data;

  factory MealHistory.fromJson(Map<String, dynamic> json) =>
      _$MealHistoryFromJson(json);
}