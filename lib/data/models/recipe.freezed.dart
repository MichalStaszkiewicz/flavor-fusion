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
  String get author => throw _privateConstructorUsedError;
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String>? get courses => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String>? get cuisines => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get cleanName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get totalTime => throw _privateConstructorUsedError;
  @HiveField(6)
  String get name => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get rating => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get serving => throw _privateConstructorUsedError;
  @HiveField(9)
  NutrientsPerServing get nutrientsPerServing =>
      throw _privateConstructorUsedError;
  @HiveField(10)
  String get recipeType => throw _privateConstructorUsedError;
  @HiveField(11)
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  @HiveField(12)
  List<String> get ingredientLines => throw _privateConstructorUsedError;
  @HiveField(13)
  int get ingredientsCount => throw _privateConstructorUsedError;
  @HiveField(14)
  List<String> get instructions => throw _privateConstructorUsedError;
  @HiveField(15)
  NutrionalInfo get nutritionalInfo => throw _privateConstructorUsedError;
  @HiveField(16)
  String get mainImage => throw _privateConstructorUsedError;

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
      {@HiveField(0) String author,
      @HiveField(1) String id,
      @HiveField(2) List<String>? courses,
      @HiveField(3) List<String>? cuisines,
      @HiveField(4) String? cleanName,
      @HiveField(5) String? totalTime,
      @HiveField(6) String name,
      @HiveField(7) int? rating,
      @HiveField(8) int? serving,
      @HiveField(9) NutrientsPerServing nutrientsPerServing,
      @HiveField(10) String recipeType,
      @HiveField(11) List<Ingredient> ingredients,
      @HiveField(12) List<String> ingredientLines,
      @HiveField(13) int ingredientsCount,
      @HiveField(14) List<String> instructions,
      @HiveField(15) NutrionalInfo nutritionalInfo,
      @HiveField(16) String mainImage});

  $NutrientsPerServingCopyWith<$Res> get nutrientsPerServing;
  $NutrionalInfoCopyWith<$Res> get nutritionalInfo;
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
    Object? author = null,
    Object? id = null,
    Object? courses = freezed,
    Object? cuisines = freezed,
    Object? cleanName = freezed,
    Object? totalTime = freezed,
    Object? name = null,
    Object? rating = freezed,
    Object? serving = freezed,
    Object? nutrientsPerServing = null,
    Object? recipeType = null,
    Object? ingredients = null,
    Object? ingredientLines = null,
    Object? ingredientsCount = null,
    Object? instructions = null,
    Object? nutritionalInfo = null,
    Object? mainImage = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cuisines: freezed == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cleanName: freezed == cleanName
          ? _value.cleanName
          : cleanName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      serving: freezed == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int?,
      nutrientsPerServing: null == nutrientsPerServing
          ? _value.nutrientsPerServing
          : nutrientsPerServing // ignore: cast_nullable_to_non_nullable
              as NutrientsPerServing,
      recipeType: null == recipeType
          ? _value.recipeType
          : recipeType // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      ingredientLines: null == ingredientLines
          ? _value.ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientsCount: null == ingredientsCount
          ? _value.ingredientsCount
          : ingredientsCount // ignore: cast_nullable_to_non_nullable
              as int,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionalInfo: null == nutritionalInfo
          ? _value.nutritionalInfo
          : nutritionalInfo // ignore: cast_nullable_to_non_nullable
              as NutrionalInfo,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientsPerServingCopyWith<$Res> get nutrientsPerServing {
    return $NutrientsPerServingCopyWith<$Res>(_value.nutrientsPerServing,
        (value) {
      return _then(_value.copyWith(nutrientsPerServing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrionalInfoCopyWith<$Res> get nutritionalInfo {
    return $NutrionalInfoCopyWith<$Res>(_value.nutritionalInfo, (value) {
      return _then(_value.copyWith(nutritionalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String author,
      @HiveField(1) String id,
      @HiveField(2) List<String>? courses,
      @HiveField(3) List<String>? cuisines,
      @HiveField(4) String? cleanName,
      @HiveField(5) String? totalTime,
      @HiveField(6) String name,
      @HiveField(7) int? rating,
      @HiveField(8) int? serving,
      @HiveField(9) NutrientsPerServing nutrientsPerServing,
      @HiveField(10) String recipeType,
      @HiveField(11) List<Ingredient> ingredients,
      @HiveField(12) List<String> ingredientLines,
      @HiveField(13) int ingredientsCount,
      @HiveField(14) List<String> instructions,
      @HiveField(15) NutrionalInfo nutritionalInfo,
      @HiveField(16) String mainImage});

  @override
  $NutrientsPerServingCopyWith<$Res> get nutrientsPerServing;
  @override
  $NutrionalInfoCopyWith<$Res> get nutritionalInfo;
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? id = null,
    Object? courses = freezed,
    Object? cuisines = freezed,
    Object? cleanName = freezed,
    Object? totalTime = freezed,
    Object? name = null,
    Object? rating = freezed,
    Object? serving = freezed,
    Object? nutrientsPerServing = null,
    Object? recipeType = null,
    Object? ingredients = null,
    Object? ingredientLines = null,
    Object? ingredientsCount = null,
    Object? instructions = null,
    Object? nutritionalInfo = null,
    Object? mainImage = null,
  }) {
    return _then(_$RecipeImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cuisines: freezed == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cleanName: freezed == cleanName
          ? _value.cleanName
          : cleanName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      serving: freezed == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int?,
      nutrientsPerServing: null == nutrientsPerServing
          ? _value.nutrientsPerServing
          : nutrientsPerServing // ignore: cast_nullable_to_non_nullable
              as NutrientsPerServing,
      recipeType: null == recipeType
          ? _value.recipeType
          : recipeType // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      ingredientLines: null == ingredientLines
          ? _value._ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredientsCount: null == ingredientsCount
          ? _value.ingredientsCount
          : ingredientsCount // ignore: cast_nullable_to_non_nullable
              as int,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionalInfo: null == nutritionalInfo
          ? _value.nutritionalInfo
          : nutritionalInfo // ignore: cast_nullable_to_non_nullable
              as NutrionalInfo,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  _$RecipeImpl(
      {@HiveField(0) required this.author,
      @HiveField(1) required this.id,
      @HiveField(2) required final List<String>? courses,
      @HiveField(3) required final List<String>? cuisines,
      @HiveField(4) required this.cleanName,
      @HiveField(5) required this.totalTime,
      @HiveField(6) required this.name,
      @HiveField(7) required this.rating,
      @HiveField(8) required this.serving,
      @HiveField(9) required this.nutrientsPerServing,
      @HiveField(10) required this.recipeType,
      @HiveField(11) required final List<Ingredient> ingredients,
      @HiveField(12) required final List<String> ingredientLines,
      @HiveField(13) required this.ingredientsCount,
      @HiveField(14) required final List<String> instructions,
      @HiveField(15) required this.nutritionalInfo,
      @HiveField(16) required this.mainImage})
      : _courses = courses,
        _cuisines = cuisines,
        _ingredients = ingredients,
        _ingredientLines = ingredientLines,
        _instructions = instructions;

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  @HiveField(0)
  final String author;
  @override
  @HiveField(1)
  final String id;
  final List<String>? _courses;
  @override
  @HiveField(2)
  List<String>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _cuisines;
  @override
  @HiveField(3)
  List<String>? get cuisines {
    final value = _cuisines;
    if (value == null) return null;
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(4)
  final String? cleanName;
  @override
  @HiveField(5)
  final String? totalTime;
  @override
  @HiveField(6)
  final String name;
  @override
  @HiveField(7)
  final int? rating;
  @override
  @HiveField(8)
  final int? serving;
  @override
  @HiveField(9)
  final NutrientsPerServing nutrientsPerServing;
  @override
  @HiveField(10)
  final String recipeType;
  final List<Ingredient> _ingredients;
  @override
  @HiveField(11)
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _ingredientLines;
  @override
  @HiveField(12)
  List<String> get ingredientLines {
    if (_ingredientLines is EqualUnmodifiableListView) return _ingredientLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientLines);
  }

  @override
  @HiveField(13)
  final int ingredientsCount;
  final List<String> _instructions;
  @override
  @HiveField(14)
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  @HiveField(15)
  final NutrionalInfo nutritionalInfo;
  @override
  @HiveField(16)
  final String mainImage;

  @override
  String toString() {
    return 'Recipe(author: $author, id: $id, courses: $courses, cuisines: $cuisines, cleanName: $cleanName, totalTime: $totalTime, name: $name, rating: $rating, serving: $serving, nutrientsPerServing: $nutrientsPerServing, recipeType: $recipeType, ingredients: $ingredients, ingredientLines: $ingredientLines, ingredientsCount: $ingredientsCount, instructions: $instructions, nutritionalInfo: $nutritionalInfo, mainImage: $mainImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.cleanName, cleanName) ||
                other.cleanName == cleanName) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.nutrientsPerServing, nutrientsPerServing) ||
                other.nutrientsPerServing == nutrientsPerServing) &&
            (identical(other.recipeType, recipeType) ||
                other.recipeType == recipeType) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._ingredientLines, _ingredientLines) &&
            (identical(other.ingredientsCount, ingredientsCount) ||
                other.ingredientsCount == ingredientsCount) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            (identical(other.nutritionalInfo, nutritionalInfo) ||
                other.nutritionalInfo == nutritionalInfo) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      author,
      id,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_cuisines),
      cleanName,
      totalTime,
      name,
      rating,
      serving,
      nutrientsPerServing,
      recipeType,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_ingredientLines),
      ingredientsCount,
      const DeepCollectionEquality().hash(_instructions),
      nutritionalInfo,
      mainImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  factory _Recipe(
      {@HiveField(0) required final String author,
      @HiveField(1) required final String id,
      @HiveField(2) required final List<String>? courses,
      @HiveField(3) required final List<String>? cuisines,
      @HiveField(4) required final String? cleanName,
      @HiveField(5) required final String? totalTime,
      @HiveField(6) required final String name,
      @HiveField(7) required final int? rating,
      @HiveField(8) required final int? serving,
      @HiveField(9) required final NutrientsPerServing nutrientsPerServing,
      @HiveField(10) required final String recipeType,
      @HiveField(11) required final List<Ingredient> ingredients,
      @HiveField(12) required final List<String> ingredientLines,
      @HiveField(13) required final int ingredientsCount,
      @HiveField(14) required final List<String> instructions,
      @HiveField(15) required final NutrionalInfo nutritionalInfo,
      @HiveField(16) required final String mainImage}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  @HiveField(0)
  String get author;
  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  List<String>? get courses;
  @override
  @HiveField(3)
  List<String>? get cuisines;
  @override
  @HiveField(4)
  String? get cleanName;
  @override
  @HiveField(5)
  String? get totalTime;
  @override
  @HiveField(6)
  String get name;
  @override
  @HiveField(7)
  int? get rating;
  @override
  @HiveField(8)
  int? get serving;
  @override
  @HiveField(9)
  NutrientsPerServing get nutrientsPerServing;
  @override
  @HiveField(10)
  String get recipeType;
  @override
  @HiveField(11)
  List<Ingredient> get ingredients;
  @override
  @HiveField(12)
  List<String> get ingredientLines;
  @override
  @HiveField(13)
  int get ingredientsCount;
  @override
  @HiveField(14)
  List<String> get instructions;
  @override
  @HiveField(15)
  NutrionalInfo get nutritionalInfo;
  @override
  @HiveField(16)
  String get mainImage;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
