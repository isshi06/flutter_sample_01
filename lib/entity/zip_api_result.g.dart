// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zip_api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Data',
      json,
      ($checkedConvert) {
        final val = _$Data(
          message: $checkedConvert('message', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as int),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => AddressInfo.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'results': instance.results,
    };
