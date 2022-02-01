// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Data',
      json,
      ($checkedConvert) {
        final val = _$Data(
          address1: $checkedConvert('address1', (v) => v as String?),
          address2: $checkedConvert('address2', (v) => v as String?),
          address3: $checkedConvert('address3', (v) => v as String?),
          kana1: $checkedConvert('kana1', (v) => v as String?),
          kana2: $checkedConvert('kana2', (v) => v as String?),
          kana3: $checkedConvert('kana3', (v) => v as String?),
          prefcode: $checkedConvert('prefcode', (v) => v as String?),
          zipcode: $checkedConvert('zipcode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'kana1': instance.kana1,
      'kana2': instance.kana2,
      'kana3': instance.kana3,
      'prefcode': instance.prefcode,
      'zipcode': instance.zipcode,
    };
