// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrional_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutrionalInfo _$NutrionalInfoFromJson(Map<String, dynamic> json) {
  return _NutrionalInfo.fromJson(json);
}

/// @nodoc
mixin _$NutrionalInfo {
  @HiveField(0)
  double get protein => throw _privateConstructorUsedError;
  @HiveField(1)
  double get carbs => throw _privateConstructorUsedError;
  @HiveField(2)
  double get fiber => throw _privateConstructorUsedError;
  @HiveField(3)
  double get sugar => throw _privateConstructorUsedError;
  @HiveField(4)
  double get fat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrionalInfoCopyWith<NutrionalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrionalInfoCopyWith<$Res> {
  factory $NutrionalInfoCopyWith(
          NutrionalInfo value, $Res Function(NutrionalInfo) then) =
      _$NutrionalInfoCopyWithImpl<$Res, NutrionalInfo>;
  @useResult
  $Res call(
      {@HiveField(0) double protein,
      @HiveField(1) double carbs,
      @HiveField(2) double fiber,
      @HiveField(3) double sugar,
      @HiveField(4) double fat});
}

/// @nodoc
class _$NutrionalInfoCopyWithImpl<$Res, $Val extends NutrionalInfo>
    implements $NutrionalInfoCopyWith<$Res> {
  _$NutrionalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protein = null,
    Object? carbs = null,
    Object? fiber = null,
    Object? sugar = null,
    Object? fat = null,
  }) {
    return _then(_value.copyWith(
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
      fiber: null == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: null == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrionalInfoImplCopyWith<$Res>
    implements $NutrionalInfoCopyWith<$Res> {
  factory _$$NutrionalInfoImplCopyWith(
          _$NutrionalInfoImpl value, $Res Function(_$NutrionalInfoImpl) then) =
      __$$NutrionalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double protein,
      @HiveField(1) double carbs,
      @HiveField(2) double fiber,
      @HiveField(3) double sugar,
      @HiveField(4) double fat});
}

/// @nodoc
class __$$NutrionalInfoImplCopyWithImpl<$Res>
    extends _$NutrionalInfoCopyWithImpl<$Res, _$NutrionalInfoImpl>
    implements _$$NutrionalInfoImplCopyWith<$Res> {
  __$$NutrionalInfoImplCopyWithImpl(
      _$NutrionalInfoImpl _value, $Res Function(_$NutrionalInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protein = null,
    Object? carbs = null,
    Object? fiber = null,
    Object? sugar = null,
    Object? fat = null,
  }) {
    return _then(_$NutrionalInfoImpl(
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
      fiber: null == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: null == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutrionalInfoImpl implements _NutrionalInfo {
  _$NutrionalInfoImpl(
      {@HiveField(0) required this.protein,
      @HiveField(1) required this.carbs,
      @HiveField(2) required this.fiber,
      @HiveField(3) required this.sugar,
      @HiveField(4) required this.fat});

  factory _$NutrionalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutrionalInfoImplFromJson(json);

  @override
  @HiveField(0)
  final double protein;
  @override
  @HiveField(1)
  final double carbs;
  @override
  @HiveField(2)
  final double fiber;
  @override
  @HiveField(3)
  final double sugar;
  @override
  @HiveField(4)
  final double fat;

  @override
  String toString() {
    return 'NutrionalInfo(protein: $protein, carbs: $carbs, fiber: $fiber, sugar: $sugar, fat: $fat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrionalInfoImpl &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.fiber, fiber) || other.fiber == fiber) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, protein, carbs, fiber, sugar, fat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrionalInfoImplCopyWith<_$NutrionalInfoImpl> get copyWith =>
      __$$NutrionalInfoImplCopyWithImpl<_$NutrionalInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutrionalInfoImplToJson(
      this,
    );
  }
}

abstract class _NutrionalInfo implements NutrionalInfo {
  factory _NutrionalInfo(
      {@HiveField(0) required final double protein,
      @HiveField(1) required final double carbs,
      @HiveField(2) required final double fiber,
      @HiveField(3) required final double sugar,
      @HiveField(4) required final double fat}) = _$NutrionalInfoImpl;

  factory _NutrionalInfo.fromJson(Map<String, dynamic> json) =
      _$NutrionalInfoImpl.fromJson;

  @override
  @HiveField(0)
  double get protein;
  @override
  @HiveField(1)
  double get carbs;
  @override
  @HiveField(2)
  double get fiber;
  @override
  @HiveField(3)
  double get sugar;
  @override
  @HiveField(4)
  double get fat;
  @override
  @JsonKey(ignore: true)
  _$$NutrionalInfoImplCopyWith<_$NutrionalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
