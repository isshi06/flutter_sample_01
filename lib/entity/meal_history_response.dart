import 'package:freezed_annotation/freezed_annotation.dart';

import 'meal_history.dart';
part 'meal_history_response.freezed.dart';
part 'meal_history_response.g.dart';

@freezed
abstract class MealHistoryResponse implements _$MealHistoryResponse {
  const MealHistoryResponse._();
  const factory MealHistoryResponse({
    @Default(<MealHistory>[]) List<MealHistory> meal_histories,
  }) = _MealHistoryResponse;

  factory MealHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$MealHistoryResponseFromJson(json);
}