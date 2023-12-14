// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Grocery {
  Recipe get recipe => throw _privateConstructorUsedError;
  List<RecipeIngredient> get ingredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res, Grocery>;
  @useResult
  $Res call({Recipe recipe, List<RecipeIngredient> ingredients});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res, $Val extends Grocery>
    implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredient>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroceryImplCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$$GroceryImplCopyWith(
          _$GroceryImpl value, $Res Function(_$GroceryImpl) then) =
      __$$GroceryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe, List<RecipeIngredient> ingredients});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$GroceryImplCopyWithImpl<$Res>
    extends _$GroceryCopyWithImpl<$Res, _$GroceryImpl>
    implements _$$GroceryImplCopyWith<$Res> {
  __$$GroceryImplCopyWithImpl(
      _$GroceryImpl _value, $Res Function(_$GroceryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? ingredients = null,
  }) {
    return _then(_$GroceryImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredient>,
    ));
  }
}

/// @nodoc

class _$GroceryImpl implements _Grocery {
  _$GroceryImpl(
      {required this.recipe, required final List<RecipeIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final Recipe recipe;
  final List<RecipeIngredient> _ingredients;
  @override
  List<RecipeIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'Grocery(recipe: $recipe, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, recipe, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      __$$GroceryImplCopyWithImpl<_$GroceryImpl>(this, _$identity);
}

abstract class _Grocery implements Grocery {
  factory _Grocery(
      {required final Recipe recipe,
      required final List<RecipeIngredient> ingredients}) = _$GroceryImpl;

  @override
  Recipe get recipe;
  @override
  List<RecipeIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$GroceryImplCopyWith<_$GroceryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
