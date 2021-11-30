// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$AddressInfoTearOff {
  const _$AddressInfoTearOff();

  Data call(String address1, String address2, String address3, String kana1,
      String kana2, String kana3, int prefcode, String zipcode) {
    return Data(
      address1,
      address2,
      address3,
      kana1,
      kana2,
      kana3,
      prefcode,
      zipcode,
    );
  }

  AddressInfo fromJson(Map<String, Object?> json) {
    return AddressInfo.fromJson(json);
  }
}

/// @nodoc
const $AddressInfo = _$AddressInfoTearOff();

/// @nodoc
mixin _$AddressInfo {
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get address3 => throw _privateConstructorUsedError;
  String get kana1 => throw _privateConstructorUsedError;
  String get kana2 => throw _privateConstructorUsedError;
  String get kana3 => throw _privateConstructorUsedError;
  int get prefcode => throw _privateConstructorUsedError;
  String get zipcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressInfoCopyWith<AddressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressInfoCopyWith<$Res> {
  factory $AddressInfoCopyWith(
          AddressInfo value, $Res Function(AddressInfo) then) =
      _$AddressInfoCopyWithImpl<$Res>;
  $Res call(
      {String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3,
      int prefcode,
      String zipcode});
}

/// @nodoc
class _$AddressInfoCopyWithImpl<$Res> implements $AddressInfoCopyWith<$Res> {
  _$AddressInfoCopyWithImpl(this._value, this._then);

  final AddressInfo _value;
  // ignore: unused_field
  final $Res Function(AddressInfo) _then;

  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? kana1 = freezed,
    Object? kana2 = freezed,
    Object? kana3 = freezed,
    Object? prefcode = freezed,
    Object? zipcode = freezed,
  }) {
    return _then(_value.copyWith(
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: address3 == freezed
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      kana1: kana1 == freezed
          ? _value.kana1
          : kana1 // ignore: cast_nullable_to_non_nullable
              as String,
      kana2: kana2 == freezed
          ? _value.kana2
          : kana2 // ignore: cast_nullable_to_non_nullable
              as String,
      kana3: kana3 == freezed
          ? _value.kana3
          : kana3 // ignore: cast_nullable_to_non_nullable
              as String,
      prefcode: prefcode == freezed
          ? _value.prefcode
          : prefcode // ignore: cast_nullable_to_non_nullable
              as int,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $AddressInfoCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3,
      int prefcode,
      String zipcode});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$AddressInfoCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? kana1 = freezed,
    Object? kana2 = freezed,
    Object? kana3 = freezed,
    Object? prefcode = freezed,
    Object? zipcode = freezed,
  }) {
    return _then(Data(
      address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3 == freezed
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      kana1 == freezed
          ? _value.kana1
          : kana1 // ignore: cast_nullable_to_non_nullable
              as String,
      kana2 == freezed
          ? _value.kana2
          : kana2 // ignore: cast_nullable_to_non_nullable
              as String,
      kana3 == freezed
          ? _value.kana3
          : kana3 // ignore: cast_nullable_to_non_nullable
              as String,
      prefcode == freezed
          ? _value.prefcode
          : prefcode // ignore: cast_nullable_to_non_nullable
              as int,
      zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data implements Data {
  const _$Data(this.address1, this.address2, this.address3, this.kana1,
      this.kana2, this.kana3, this.prefcode, this.zipcode);

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @override
  final String address1;
  @override
  final String address2;
  @override
  final String address3;
  @override
  final String kana1;
  @override
  final String kana2;
  @override
  final String kana3;
  @override
  final int prefcode;
  @override
  final String zipcode;

  @override
  String toString() {
    return 'AddressInfo(address1: $address1, address2: $address2, address3: $address3, kana1: $kana1, kana2: $kana2, kana3: $kana3, prefcode: $prefcode, zipcode: $zipcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.kana1, kana1) || other.kana1 == kana1) &&
            (identical(other.kana2, kana2) || other.kana2 == kana2) &&
            (identical(other.kana3, kana3) || other.kana3 == kana3) &&
            (identical(other.prefcode, prefcode) ||
                other.prefcode == prefcode) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address1, address2, address3,
      kana1, kana2, kana3, prefcode, zipcode);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data implements AddressInfo {
  const factory Data(
      String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3,
      int prefcode,
      String zipcode) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  String get address1;
  @override
  String get address2;
  @override
  String get address3;
  @override
  String get kana1;
  @override
  String get kana2;
  @override
  String get kana3;
  @override
  int get prefcode;
  @override
  String get zipcode;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
