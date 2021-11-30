// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zip_api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => _$Data(
      message: json['message'] as String?,
      status: json['status'] as int,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => AddressInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'results': instance.results,
    };
