// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  @HiveField(0)
  String get text => throw _privateConstructorUsedError;
  @HiveField(1)
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(2)
  String get measure => throw _privateConstructorUsedError;
  @HiveField(3)
  String get food => throw _privateConstructorUsedError;
  @HiveField(4)
  double get weight => throw _privateConstructorUsedError;
  @HiveField(5)
  String get foodCategory => throw _privateConstructorUsedError;
  @HiveField(6)
  String get foodId => throw _privateConstructorUsedError;
  @HiveField(7)
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) int quantity,
      @HiveField(2) String measure,
      @HiveField(3) String food,
      @HiveField(4) double weight,
      @HiveField(5) String foodCategory,
      @HiveField(6) String foodId,
      @HiveField(7) String image});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? quantity = null,
    Object? measure = null,
    Object? food = null,
    Object? weight = null,
    Object? foodCategory = null,
    Object? foodId = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      foodCategory: null == foodCategory
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as String,
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$_IngredientCopyWith(
          _$_Ingredient value, $Res Function(_$_Ingredient) then) =
      __$$_IngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) int quantity,
      @HiveField(2) String measure,
      @HiveField(3) String food,
      @HiveField(4) double weight,
      @HiveField(5) String foodCategory,
      @HiveField(6) String foodId,
      @HiveField(7) String image});
}

/// @nodoc
class __$$_IngredientCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$_Ingredient>
    implements _$$_IngredientCopyWith<$Res> {
  __$$_IngredientCopyWithImpl(
      _$_Ingredient _value, $Res Function(_$_Ingredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? quantity = null,
    Object? measure = null,
    Object? food = null,
    Object? weight = null,
    Object? foodCategory = null,
    Object? foodId = null,
    Object? image = null,
  }) {
    return _then(_$_Ingredient(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      measure: null == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      foodCategory: null == foodCategory
          ? _value.foodCategory
          : foodCategory // ignore: cast_nullable_to_non_nullable
              as String,
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient implements _Ingredient {
  _$_Ingredient(
      {@HiveField(0) required this.text,
      @HiveField(1) required this.quantity,
      @HiveField(2) required this.measure,
      @HiveField(3) required this.food,
      @HiveField(4) required this.weight,
      @HiveField(5) required this.foodCategory,
      @HiveField(6) required this.foodId,
      @HiveField(7) required this.image});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  @HiveField(0)
  final String text;
  @override
  @HiveField(1)
  final int quantity;
  @override
  @HiveField(2)
  final String measure;
  @override
  @HiveField(3)
  final String food;
  @override
  @HiveField(4)
  final double weight;
  @override
  @HiveField(5)
  final String foodCategory;
  @override
  @HiveField(6)
  final String foodId;
  @override
  @HiveField(7)
  final String image;

  @override
  String toString() {
    return 'Ingredient(text: $text, quantity: $quantity, measure: $measure, food: $food, weight: $weight, foodCategory: $foodCategory, foodId: $foodId, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.foodCategory, foodCategory) ||
                other.foodCategory == foodCategory) &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, quantity, measure, food,
      weight, foodCategory, foodId, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      __$$_IngredientCopyWithImpl<_$_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  factory _Ingredient(
      {@HiveField(0) required final String text,
      @HiveField(1) required final int quantity,
      @HiveField(2) required final String measure,
      @HiveField(3) required final String food,
      @HiveField(4) required final double weight,
      @HiveField(5) required final String foodCategory,
      @HiveField(6) required final String foodId,
      @HiveField(7) required final String image}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  int get quantity;
  @override
  @HiveField(2)
  String get measure;
  @override
  @HiveField(3)
  String get food;
  @override
  @HiveField(4)
  double get weight;
  @override
  @HiveField(5)
  String get foodCategory;
  @override
  @HiveField(6)
  String get foodId;
  @override
  @HiveField(7)
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
