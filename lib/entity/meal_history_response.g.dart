// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealHistoryResponse _$$_MealHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MealHistoryResponse(
      meal_histories: (json['meal_histories'] as List<dynamic>?)
              ?.map((e) => MealHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_MealHistoryResponseToJson(
        _$_MealHistoryResponse instance) =>
    <String, dynamic>{
      'meal_histories': instance.meal_histories,
    };
