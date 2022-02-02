// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealHistoryResponse _$$_MealHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MealHistoryResponse',
      json,
      ($checkedConvert) {
        final val = _$_MealHistoryResponse(
          meal_histories: $checkedConvert(
              'meal_histories',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          MealHistory.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MealHistoryResponseToJson(
        _$_MealHistoryResponse instance) =>
    <String, dynamic>{
      'meal_histories': instance.meal_histories,
    };
