import 'package:flutter_sample_01/zip_search/model/address_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zip_api_result.freezed.dart';
part 'zip_api_result.g.dart';

@freezed
class ZipApiResult with _$ZipApiResult {
  const factory ZipApiResult({
    String? message,
    required int status,
    List<AddressInfo>? results,
  }) = Data;

  factory ZipApiResult.fromJson(Map<String, dynamic> json) =>
      _$ZipApiResultFromJson(json);
}
