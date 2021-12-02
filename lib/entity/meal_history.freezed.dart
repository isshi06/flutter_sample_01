// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealHistory _$MealHistoryFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$MealHistoryTearOff {
  const _$MealHistoryTearOff();

  Data call(
      {int id = 0,
      String timing = '',
      String description = '',
      String meal_type_name = '',
      String taste_type_name = ''}) {
    return Data(
      id: id,
      timing: timing,
      description: description,
      meal_type_name: meal_type_name,
      taste_type_name: taste_type_name,
    );
  }

  MealHistory fromJson(Map<String, Object?> json) {
    return MealHistory.fromJson(json);
  }
}

/// @nodoc
const $MealHistory = _$MealHistoryTearOff();

/// @nodoc
mixin _$MealHistory {
  int get id => throw _privateConstructorUsedError;
  String get timing => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get meal_type_name => throw _privateConstructorUsedError;
  String get taste_type_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealHistoryCopyWith<MealHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealHistoryCopyWith<$Res> {
  factory $MealHistoryCopyWith(
          MealHistory value, $Res Function(MealHistory) then) =
      _$MealHistoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String timing,
      String description,
      String meal_type_name,
      String taste_type_name});
}

/// @nodoc
class _$MealHistoryCopyWithImpl<$Res> implements $MealHistoryCopyWith<$Res> {
  _$MealHistoryCopyWithImpl(this._value, this._then);

  final MealHistory _value;
  // ignore: unused_field
  final $Res Function(MealHistory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? timing = freezed,
    Object? description = freezed,
    Object? meal_type_name = freezed,
    Object? taste_type_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      meal_type_name: meal_type_name == freezed
          ? _value.meal_type_name
          : meal_type_name // ignore: cast_nullable_to_non_nullable
              as String,
      taste_type_name: taste_type_name == freezed
          ? _value.taste_type_name
          : taste_type_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $MealHistoryCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String timing,
      String description,
      String meal_type_name,
      String taste_type_name});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$MealHistoryCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? timing = freezed,
    Object? description = freezed,
    Object? meal_type_name = freezed,
    Object? taste_type_name = freezed,
  }) {
    return _then(Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timing: timing == freezed
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      meal_type_name: meal_type_name == freezed
          ? _value.meal_type_name
          : meal_type_name // ignore: cast_nullable_to_non_nullable
              as String,
      taste_type_name: taste_type_name == freezed
          ? _value.taste_type_name
          : taste_type_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data extends Data {
  const _$Data(
      {this.id = 0,
      this.timing = '',
      this.description = '',
      this.meal_type_name = '',
      this.taste_type_name = ''})
      : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String timing;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: '')
  @override
  final String meal_type_name;
  @JsonKey(defaultValue: '')
  @override
  final String taste_type_name;

  @override
  String toString() {
    return 'MealHistory(id: $id, timing: $timing, description: $description, meal_type_name: $meal_type_name, taste_type_name: $taste_type_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.meal_type_name, meal_type_name) ||
                other.meal_type_name == meal_type_name) &&
            (identical(other.taste_type_name, taste_type_name) ||
                other.taste_type_name == taste_type_name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, timing, description, meal_type_name, taste_type_name);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data extends MealHistory {
  const factory Data(
      {int id,
      String timing,
      String description,
      String meal_type_name,
      String taste_type_name}) = _$Data;
  const Data._() : super._();

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  int get id;
  @override
  String get timing;
  @override
  String get description;
  @override
  String get meal_type_name;
  @override
  String get taste_type_name;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
