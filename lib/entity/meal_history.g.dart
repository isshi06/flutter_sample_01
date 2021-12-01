// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => _$Data(
      id: json['id'] as int?,
      timing: json['timing'] as String?,
      description: json['description'] as String?,
      meal_type_name: json['meal_type_name'] as String?,
      taste_type_name: json['taste_type_name'] as String?,
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'id': instance.id,
      'timing': instance.timing,
      'description': instance.description,
      'meal_type_name': instance.meal_type_name,
      'taste_type_name': instance.taste_type_name,
    };
