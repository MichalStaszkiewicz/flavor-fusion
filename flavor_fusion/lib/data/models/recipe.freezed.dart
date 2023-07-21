// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  String get label => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String> get dietLabels => throw _privateConstructorUsedError;
  List<String> get healthLabels => throw _privateConstructorUsedError;
  List<String> get cautions => throw _privateConstructorUsedError;
  List<String> get ingredientLines => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  double get calories => throw _privateConstructorUsedError;
  double get totalWeight => throw _privateConstructorUsedError;
  int get totalTime => throw _privateConstructorUsedError;
  List<String> get cuisineType => throw _privateConstructorUsedError;
  List<String> get mealType => throw _privateConstructorUsedError;
  List<String> get dishType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {String label,
      String image,
      String url,
      List<String> dietLabels,
      List<String> healthLabels,
      List<String> cautions,
      List<String> ingredientLines,
      List<Ingredient> ingredients,
      double calories,
      double totalWeight,
      int totalTime,
      List<String> cuisineType,
      List<String> mealType,
      List<String> dishType});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? image = null,
    Object? url = null,
    Object? dietLabels = null,
    Object? healthLabels = null,
    Object? cautions = null,
    Object? ingredientLines = null,
    Object? ingredients = null,
    Object? calories = null,
    Object? totalWeight = null,
    Object? totalTime = null,
    Object? cuisineType = null,
    Object? mealType = null,
    Object? dishType = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dietLabels: null == dietLabels
          ? _value.dietLabels
          : dietLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      healthLabels: null == healthLabels
          ? _value.healthLabels
          : healthLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cautions: null == cautions
          ? _value.cautions
          : cautions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientLines: null == ingredientLines
          ? _value.ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      cuisineType: null == cuisineType
          ? _value.cuisineType
          : cuisineType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishType: null == dishType
          ? _value.dishType
          : dishType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String image,
      String url,
      List<String> dietLabels,
      List<String> healthLabels,
      List<String> cautions,
      List<String> ingredientLines,
      List<Ingredient> ingredients,
      double calories,
      double totalWeight,
      int totalTime,
      List<String> cuisineType,
      List<String> mealType,
      List<String> dishType});
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$_Recipe>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? image = null,
    Object? url = null,
    Object? dietLabels = null,
    Object? healthLabels = null,
    Object? cautions = null,
    Object? ingredientLines = null,
    Object? ingredients = null,
    Object? calories = null,
    Object? totalWeight = null,
    Object? totalTime = null,
    Object? cuisineType = null,
    Object? mealType = null,
    Object? dishType = null,
  }) {
    return _then(_$_Recipe(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dietLabels: null == dietLabels
          ? _value._dietLabels
          : dietLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      healthLabels: null == healthLabels
          ? _value._healthLabels
          : healthLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cautions: null == cautions
          ? _value._cautions
          : cautions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientLines: null == ingredientLines
          ? _value._ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      totalWeight: null == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      cuisineType: null == cuisineType
          ? _value._cuisineType
          : cuisineType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealType: null == mealType
          ? _value._mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishType: null == dishType
          ? _value._dishType
          : dishType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe implements _Recipe {
  _$_Recipe(
      {required this.label,
      required this.image,
      required this.url,
      required final List<String> dietLabels,
      required final List<String> healthLabels,
      required final List<String> cautions,
      required final List<String> ingredientLines,
      required final List<Ingredient> ingredients,
      required this.calories,
      required this.totalWeight,
      required this.totalTime,
      required final List<String> cuisineType,
      required final List<String> mealType,
      required final List<String> dishType})
      : _dietLabels = dietLabels,
        _healthLabels = healthLabels,
        _cautions = cautions,
        _ingredientLines = ingredientLines,
        _ingredients = ingredients,
        _cuisineType = cuisineType,
        _mealType = mealType,
        _dishType = dishType;

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  final String label;
  @override
  final String image;
  @override
  final String url;
  final List<String> _dietLabels;
  @override
  List<String> get dietLabels {
    if (_dietLabels is EqualUnmodifiableListView) return _dietLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietLabels);
  }

  final List<String> _healthLabels;
  @override
  List<String> get healthLabels {
    if (_healthLabels is EqualUnmodifiableListView) return _healthLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthLabels);
  }

  final List<String> _cautions;
  @override
  List<String> get cautions {
    if (_cautions is EqualUnmodifiableListView) return _cautions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cautions);
  }

  final List<String> _ingredientLines;
  @override
  List<String> get ingredientLines {
    if (_ingredientLines is EqualUnmodifiableListView) return _ingredientLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientLines);
  }

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final double calories;
  @override
  final double totalWeight;
  @override
  final int totalTime;
  final List<String> _cuisineType;
  @override
  List<String> get cuisineType {
    if (_cuisineType is EqualUnmodifiableListView) return _cuisineType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisineType);
  }

  final List<String> _mealType;
  @override
  List<String> get mealType {
    if (_mealType is EqualUnmodifiableListView) return _mealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealType);
  }

  final List<String> _dishType;
  @override
  List<String> get dishType {
    if (_dishType is EqualUnmodifiableListView) return _dishType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishType);
  }

  @override
  String toString() {
    return 'Recipe(label: $label, image: $image, url: $url, dietLabels: $dietLabels, healthLabels: $healthLabels, cautions: $cautions, ingredientLines: $ingredientLines, ingredients: $ingredients, calories: $calories, totalWeight: $totalWeight, totalTime: $totalTime, cuisineType: $cuisineType, mealType: $mealType, dishType: $dishType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._dietLabels, _dietLabels) &&
            const DeepCollectionEquality()
                .equals(other._healthLabels, _healthLabels) &&
            const DeepCollectionEquality().equals(other._cautions, _cautions) &&
            const DeepCollectionEquality()
                .equals(other._ingredientLines, _ingredientLines) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            const DeepCollectionEquality()
                .equals(other._cuisineType, _cuisineType) &&
            const DeepCollectionEquality().equals(other._mealType, _mealType) &&
            const DeepCollectionEquality().equals(other._dishType, _dishType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      image,
      url,
      const DeepCollectionEquality().hash(_dietLabels),
      const DeepCollectionEquality().hash(_healthLabels),
      const DeepCollectionEquality().hash(_cautions),
      const DeepCollectionEquality().hash(_ingredientLines),
      const DeepCollectionEquality().hash(_ingredients),
      calories,
      totalWeight,
      totalTime,
      const DeepCollectionEquality().hash(_cuisineType),
      const DeepCollectionEquality().hash(_mealType),
      const DeepCollectionEquality().hash(_dishType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  factory _Recipe(
      {required final String label,
      required final String image,
      required final String url,
      required final List<String> dietLabels,
      required final List<String> healthLabels,
      required final List<String> cautions,
      required final List<String> ingredientLines,
      required final List<Ingredient> ingredients,
      required final double calories,
      required final double totalWeight,
      required final int totalTime,
      required final List<String> cuisineType,
      required final List<String> mealType,
      required final List<String> dishType}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  String get label;
  @override
  String get image;
  @override
  String get url;
  @override
  List<String> get dietLabels;
  @override
  List<String> get healthLabels;
  @override
  List<String> get cautions;
  @override
  List<String> get ingredientLines;
  @override
  List<Ingredient> get ingredients;
  @override
  double get calories;
  @override
  double get totalWeight;
  @override
  int get totalTime;
  @override
  List<String> get cuisineType;
  @override
  List<String> get mealType;
  @override
  List<String> get dishType;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
