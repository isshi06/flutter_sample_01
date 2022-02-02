// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zip_api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZipApiResult _$ZipApiResultFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$ZipApiResultTearOff {
  const _$ZipApiResultTearOff();

  Data call(
      {String? message, required int status, List<AddressInfo>? results}) {
    return Data(
      message: message,
      status: status,
      results: results,
    );
  }

  ZipApiResult fromJson(Map<String, Object?> json) {
    return ZipApiResult.fromJson(json);
  }
}

/// @nodoc
const $ZipApiResult = _$ZipApiResultTearOff();

/// @nodoc
mixin _$ZipApiResult {
  String? get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<AddressInfo>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZipApiResultCopyWith<ZipApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZipApiResultCopyWith<$Res> {
  factory $ZipApiResultCopyWith(
          ZipApiResult value, $Res Function(ZipApiResult) then) =
      _$ZipApiResultCopyWithImpl<$Res>;
  $Res call({String? message, int status, List<AddressInfo>? results});
}

/// @nodoc
class _$ZipApiResultCopyWithImpl<$Res> implements $ZipApiResultCopyWith<$Res> {
  _$ZipApiResultCopyWithImpl(this._value, this._then);

  final ZipApiResult _value;
  // ignore: unused_field
  final $Res Function(ZipApiResult) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AddressInfo>?,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $ZipApiResultCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? message, int status, List<AddressInfo>? results});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$ZipApiResultCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(Data(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AddressInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data implements Data {
  const _$Data({this.message, required this.status, this.results});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @override
  final String? message;
  @override
  final int status;
  @override
  final List<AddressInfo>? results;

  @override
  String toString() {
    return 'ZipApiResult(message: $message, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, status,
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data implements ZipApiResult {
  const factory Data(
      {String? message,
      required int status,
      List<AddressInfo>? results}) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  String? get message;
  @override
  int get status;
  @override
  List<AddressInfo>? get results;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
