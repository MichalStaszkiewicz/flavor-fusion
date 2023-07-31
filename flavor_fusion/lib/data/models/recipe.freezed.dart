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
  @HiveField(0)
  String get label => throw _privateConstructorUsedError;
  @HiveField(1)
  String get image => throw _privateConstructorUsedError;
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get dietLabels => throw _privateConstructorUsedError;
  @HiveField(4)
  List<String> get healthLabels => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String> get cautions => throw _privateConstructorUsedError;
  @HiveField(6)
  List<String> get ingredientLines => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  @HiveField(8)
  double get calories => throw _privateConstructorUsedError;
  @HiveField(9)
  double get totalWeight => throw _privateConstructorUsedError;
  @HiveField(10)
  int get totalTime => throw _privateConstructorUsedError;
  @HiveField(11)
  List<String> get cuisineType => throw _privateConstructorUsedError;
  @HiveField(12)
  List<String> get mealType => throw _privateConstructorUsedError;
  @HiveField(13)
  List<String> get dishType => throw _privateConstructorUsedError;
  @HiveField(14)
  int get id => throw _privateConstructorUsedError;
  @HiveField(15)
  String get author => throw _privateConstructorUsedError;

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
      {@HiveField(0) String label,
      @HiveField(1) String image,
      @HiveField(2) String url,
      @HiveField(3) List<String> dietLabels,
      @HiveField(4) List<String> healthLabels,
      @HiveField(5) List<String> cautions,
      @HiveField(6) List<String> ingredientLines,
      @HiveField(7) List<Ingredient> ingredients,
      @HiveField(8) double calories,
      @HiveField(9) double totalWeight,
      @HiveField(10) int totalTime,
      @HiveField(11) List<String> cuisineType,
      @HiveField(12) List<String> mealType,
      @HiveField(13) List<String> dishType,
      @HiveField(14) int id,
      @HiveField(15) String author});
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
    Object? id = null,
    Object? author = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@HiveField(0) String label,
      @HiveField(1) String image,
      @HiveField(2) String url,
      @HiveField(3) List<String> dietLabels,
      @HiveField(4) List<String> healthLabels,
      @HiveField(5) List<String> cautions,
      @HiveField(6) List<String> ingredientLines,
      @HiveField(7) List<Ingredient> ingredients,
      @HiveField(8) double calories,
      @HiveField(9) double totalWeight,
      @HiveField(10) int totalTime,
      @HiveField(11) List<String> cuisineType,
      @HiveField(12) List<String> mealType,
      @HiveField(13) List<String> dishType,
      @HiveField(14) int id,
      @HiveField(15) String author});
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
    Object? id = null,
    Object? author = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe implements _Recipe {
  _$_Recipe(
      {@HiveField(0) required this.label,
      @HiveField(1) required this.image,
      @HiveField(2) required this.url,
      @HiveField(3) required final List<String> dietLabels,
      @HiveField(4) required final List<String> healthLabels,
      @HiveField(5) required final List<String> cautions,
      @HiveField(6) required final List<String> ingredientLines,
      @HiveField(7) required final List<Ingredient> ingredients,
      @HiveField(8) required this.calories,
      @HiveField(9) required this.totalWeight,
      @HiveField(10) required this.totalTime,
      @HiveField(11) required final List<String> cuisineType,
      @HiveField(12) required final List<String> mealType,
      @HiveField(13) required final List<String> dishType,
      @HiveField(14) required this.id,
      @HiveField(15) required this.author})
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
  @HiveField(0)
  final String label;
  @override
  @HiveField(1)
  final String image;
  @override
  @HiveField(2)
  final String url;
  final List<String> _dietLabels;
  @override
  @HiveField(3)
  List<String> get dietLabels {
    if (_dietLabels is EqualUnmodifiableListView) return _dietLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietLabels);
  }

  final List<String> _healthLabels;
  @override
  @HiveField(4)
  List<String> get healthLabels {
    if (_healthLabels is EqualUnmodifiableListView) return _healthLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthLabels);
  }

  final List<String> _cautions;
  @override
  @HiveField(5)
  List<String> get cautions {
    if (_cautions is EqualUnmodifiableListView) return _cautions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cautions);
  }

  final List<String> _ingredientLines;
  @override
  @HiveField(6)
  List<String> get ingredientLines {
    if (_ingredientLines is EqualUnmodifiableListView) return _ingredientLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientLines);
  }

  final List<Ingredient> _ingredients;
  @override
  @HiveField(7)
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  @HiveField(8)
  final double calories;
  @override
  @HiveField(9)
  final double totalWeight;
  @override
  @HiveField(10)
  final int totalTime;
  final List<String> _cuisineType;
  @override
  @HiveField(11)
  List<String> get cuisineType {
    if (_cuisineType is EqualUnmodifiableListView) return _cuisineType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisineType);
  }

  final List<String> _mealType;
  @override
  @HiveField(12)
  List<String> get mealType {
    if (_mealType is EqualUnmodifiableListView) return _mealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealType);
  }

  final List<String> _dishType;
  @override
  @HiveField(13)
  List<String> get dishType {
    if (_dishType is EqualUnmodifiableListView) return _dishType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishType);
  }

  @override
  @HiveField(14)
  final int id;
  @override
  @HiveField(15)
  final String author;

  @override
  String toString() {
    return 'Recipe(label: $label, image: $image, url: $url, dietLabels: $dietLabels, healthLabels: $healthLabels, cautions: $cautions, ingredientLines: $ingredientLines, ingredients: $ingredients, calories: $calories, totalWeight: $totalWeight, totalTime: $totalTime, cuisineType: $cuisineType, mealType: $mealType, dishType: $dishType, id: $id, author: $author)';
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
            const DeepCollectionEquality().equals(other._dishType, _dishType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author));
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
      const DeepCollectionEquality().hash(_dishType),
      id,
      author);

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
      {@HiveField(0) required final String label,
      @HiveField(1) required final String image,
      @HiveField(2) required final String url,
      @HiveField(3) required final List<String> dietLabels,
      @HiveField(4) required final List<String> healthLabels,
      @HiveField(5) required final List<String> cautions,
      @HiveField(6) required final List<String> ingredientLines,
      @HiveField(7) required final List<Ingredient> ingredients,
      @HiveField(8) required final double calories,
      @HiveField(9) required final double totalWeight,
      @HiveField(10) required final int totalTime,
      @HiveField(11) required final List<String> cuisineType,
      @HiveField(12) required final List<String> mealType,
      @HiveField(13) required final List<String> dishType,
      @HiveField(14) required final int id,
      @HiveField(15) required final String author}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  @HiveField(0)
  String get label;
  @override
  @HiveField(1)
  String get image;
  @override
  @HiveField(2)
  String get url;
  @override
  @HiveField(3)
  List<String> get dietLabels;
  @override
  @HiveField(4)
  List<String> get healthLabels;
  @override
  @HiveField(5)
  List<String> get cautions;
  @override
  @HiveField(6)
  List<String> get ingredientLines;
  @override
  @HiveField(7)
  List<Ingredient> get ingredients;
  @override
  @HiveField(8)
  double get calories;
  @override
  @HiveField(9)
  double get totalWeight;
  @override
  @HiveField(10)
  int get totalTime;
  @override
  @HiveField(11)
  List<String> get cuisineType;
  @override
  @HiveField(12)
  List<String> get mealType;
  @override
  @HiveField(13)
  List<String> get dishType;
  @override
  @HiveField(14)
  int get id;
  @override
  @HiveField(15)
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
