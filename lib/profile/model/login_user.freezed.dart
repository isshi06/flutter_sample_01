// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginUserTearOff {
  const _$LoginUserTearOff();

  Data call(String? email, String? name) {
    return Data(
      email,
      name,
    );
  }
}

/// @nodoc
const $LoginUser = _$LoginUserTearOff();

/// @nodoc
mixin _$LoginUser {
// 匿名認証を使う際はemail空になる
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
  $Res call({String? email, String? name});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res> implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  final LoginUser _value;
  // ignore: unused_field
  final $Res Function(LoginUser) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? name});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(Data(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.email, this.name);

  @override // 匿名認証を使う際はemail空になる
  final String? email;
  @override
  final String? name;

  @override
  String toString() {
    return 'LoginUser(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements LoginUser {
  const factory Data(String? email, String? name) = _$Data;

  @override // 匿名認証を使う際はemail空になる
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
