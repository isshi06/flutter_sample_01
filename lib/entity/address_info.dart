import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_info.freezed.dart';
part 'address_info.g.dart';

@freezed
class AddressInfo with _$AddressInfo {
  const factory AddressInfo(
      String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3,
      int prefcode,
      String zipcode,
      ) = Data;
  factory AddressInfo.fromJson(Map<String, dynamic> json) => _$AddressInfoFromJson(json);
}