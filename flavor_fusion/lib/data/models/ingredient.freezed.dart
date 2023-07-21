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
  String get text => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get measure => throw _privateConstructorUsedError;
  String get food => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String get foodCategory => throw _privateConstructorUsedError;
  String get foodId => throw _privateConstructorUsedError;
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
      {String text,
      int quantity,
      String measure,
      String food,
      double weight,
      String foodCategory,
      String foodId,
      String image});
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
      {String text,
      int quantity,
      String measure,
      String food,
      double weight,
      String foodCategory,
      String foodId,
      String image});
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
      {required this.text,
      required this.quantity,
      required this.measure,
      required this.food,
      required this.weight,
      required this.foodCategory,
      required this.foodId,
      required this.image});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final String text;
  @override
  final int quantity;
  @override
  final String measure;
  @override
  final String food;
  @override
  final double weight;
  @override
  final String foodCategory;
  @override
  final String foodId;
  @override
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
      {required final String text,
      required final int quantity,
      required final String measure,
      required final String food,
      required final double weight,
      required final String foodCategory,
      required final String foodId,
      required final String image}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  String get text;
  @override
  int get quantity;
  @override
  String get measure;
  @override
  String get food;
  @override
  double get weight;
  @override
  String get foodCategory;
  @override
  String get foodId;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
