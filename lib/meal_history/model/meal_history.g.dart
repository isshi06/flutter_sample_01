// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Data',
      json,
      ($checkedConvert) {
        final val = _$Data(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          timing: $checkedConvert('timing', (v) => v as String? ?? ''),
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
          mealTypeName:
              $checkedConvert('meal_type_name', (v) => v as String? ?? ''),
          tasteTypeName:
              $checkedConvert('taste_type_name', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'mealTypeName': 'meal_type_name',
        'tasteTypeName': 'taste_type_name'
      },
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'id': instance.id,
      'timing': instance.timing,
      'description': instance.description,
      'meal_type_name': instance.mealTypeName,
      'taste_type_name': instance.tasteTypeName,
    };
