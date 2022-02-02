// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealHistoryResponse _$MealHistoryResponseFromJson(Map<String, dynamic> json) {
  return _MealHistoryResponse.fromJson(json);
}

/// @nodoc
class _$MealHistoryResponseTearOff {
  const _$MealHistoryResponseTearOff();

  _MealHistoryResponse call(
      {List<MealHistory> meal_histories = const <MealHistory>[]}) {
    return _MealHistoryResponse(
      meal_histories: meal_histories,
    );
  }

  MealHistoryResponse fromJson(Map<String, Object?> json) {
    return MealHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $MealHistoryResponse = _$MealHistoryResponseTearOff();

/// @nodoc
mixin _$MealHistoryResponse {
  List<MealHistory> get meal_histories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealHistoryResponseCopyWith<MealHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealHistoryResponseCopyWith<$Res> {
  factory $MealHistoryResponseCopyWith(
          MealHistoryResponse value, $Res Function(MealHistoryResponse) then) =
      _$MealHistoryResponseCopyWithImpl<$Res>;
  $Res call({List<MealHistory> meal_histories});
}

/// @nodoc
class _$MealHistoryResponseCopyWithImpl<$Res>
    implements $MealHistoryResponseCopyWith<$Res> {
  _$MealHistoryResponseCopyWithImpl(this._value, this._then);

  final MealHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(MealHistoryResponse) _then;

  @override
  $Res call({
    Object? meal_histories = freezed,
  }) {
    return _then(_value.copyWith(
      meal_histories: meal_histories == freezed
          ? _value.meal_histories
          : meal_histories // ignore: cast_nullable_to_non_nullable
              as List<MealHistory>,
    ));
  }
}

/// @nodoc
abstract class _$MealHistoryResponseCopyWith<$Res>
    implements $MealHistoryResponseCopyWith<$Res> {
  factory _$MealHistoryResponseCopyWith(_MealHistoryResponse value,
          $Res Function(_MealHistoryResponse) then) =
      __$MealHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MealHistory> meal_histories});
}

/// @nodoc
class __$MealHistoryResponseCopyWithImpl<$Res>
    extends _$MealHistoryResponseCopyWithImpl<$Res>
    implements _$MealHistoryResponseCopyWith<$Res> {
  __$MealHistoryResponseCopyWithImpl(
      _MealHistoryResponse _value, $Res Function(_MealHistoryResponse) _then)
      : super(_value, (v) => _then(v as _MealHistoryResponse));

  @override
  _MealHistoryResponse get _value => super._value as _MealHistoryResponse;

  @override
  $Res call({
    Object? meal_histories = freezed,
  }) {
    return _then(_MealHistoryResponse(
      meal_histories: meal_histories == freezed
          ? _value.meal_histories
          : meal_histories // ignore: cast_nullable_to_non_nullable
              as List<MealHistory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealHistoryResponse extends _MealHistoryResponse {
  const _$_MealHistoryResponse({this.meal_histories = const <MealHistory>[]})
      : super._();

  factory _$_MealHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MealHistoryResponseFromJson(json);

  @JsonKey(defaultValue: const <MealHistory>[])
  @override
  final List<MealHistory> meal_histories;

  @override
  String toString() {
    return 'MealHistoryResponse(meal_histories: $meal_histories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealHistoryResponse &&
            const DeepCollectionEquality()
                .equals(other.meal_histories, meal_histories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(meal_histories));

  @JsonKey(ignore: true)
  @override
  _$MealHistoryResponseCopyWith<_MealHistoryResponse> get copyWith =>
      __$MealHistoryResponseCopyWithImpl<_MealHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealHistoryResponseToJson(this);
  }
}

abstract class _MealHistoryResponse extends MealHistoryResponse {
  const factory _MealHistoryResponse({List<MealHistory> meal_histories}) =
      _$_MealHistoryResponse;
  const _MealHistoryResponse._() : super._();

  factory _MealHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_MealHistoryResponse.fromJson;

  @override
  List<MealHistory> get meal_histories;
  @override
  @JsonKey(ignore: true)
  _$MealHistoryResponseCopyWith<_MealHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
