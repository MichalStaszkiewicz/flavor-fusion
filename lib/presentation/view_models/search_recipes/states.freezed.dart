// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipesSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesSearchStateCopyWith<$Res> {
  factory $RecipesSearchStateCopyWith(
          RecipesSearchState value, $Res Function(RecipesSearchState) then) =
      _$RecipesSearchStateCopyWithImpl<$Res, RecipesSearchState>;
}

/// @nodoc
class _$RecipesSearchStateCopyWithImpl<$Res, $Val extends RecipesSearchState>
    implements $RecipesSearchStateCopyWith<$Res> {
  _$RecipesSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipesSearchInitialImplCopyWith<$Res> {
  factory _$$RecipesSearchInitialImplCopyWith(_$RecipesSearchInitialImpl value,
          $Res Function(_$RecipesSearchInitialImpl) then) =
      __$$RecipesSearchInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesSearchInitialImplCopyWithImpl<$Res>
    extends _$RecipesSearchStateCopyWithImpl<$Res, _$RecipesSearchInitialImpl>
    implements _$$RecipesSearchInitialImplCopyWith<$Res> {
  __$$RecipesSearchInitialImplCopyWithImpl(_$RecipesSearchInitialImpl _value,
      $Res Function(_$RecipesSearchInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesSearchInitialImpl implements RecipesSearchInitial {
  _$RecipesSearchInitialImpl();

  @override
  String toString() {
    return 'RecipesSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSearchInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipesSearchInitial implements RecipesSearchState {
  factory RecipesSearchInitial() = _$RecipesSearchInitialImpl;
}

/// @nodoc
abstract class _$$RecipesSearchLoadingImplCopyWith<$Res> {
  factory _$$RecipesSearchLoadingImplCopyWith(_$RecipesSearchLoadingImpl value,
          $Res Function(_$RecipesSearchLoadingImpl) then) =
      __$$RecipesSearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesSearchLoadingImplCopyWithImpl<$Res>
    extends _$RecipesSearchStateCopyWithImpl<$Res, _$RecipesSearchLoadingImpl>
    implements _$$RecipesSearchLoadingImplCopyWith<$Res> {
  __$$RecipesSearchLoadingImplCopyWithImpl(_$RecipesSearchLoadingImpl _value,
      $Res Function(_$RecipesSearchLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesSearchLoadingImpl implements RecipesSearchLoading {
  _$RecipesSearchLoadingImpl();

  @override
  String toString() {
    return 'RecipesSearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipesSearchLoading implements RecipesSearchState {
  factory RecipesSearchLoading() = _$RecipesSearchLoadingImpl;
}

/// @nodoc
abstract class _$$RecipesSearchErrorImplCopyWith<$Res> {
  factory _$$RecipesSearchErrorImplCopyWith(_$RecipesSearchErrorImpl value,
          $Res Function(_$RecipesSearchErrorImpl) then) =
      __$$RecipesSearchErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesSearchErrorImplCopyWithImpl<$Res>
    extends _$RecipesSearchStateCopyWithImpl<$Res, _$RecipesSearchErrorImpl>
    implements _$$RecipesSearchErrorImplCopyWith<$Res> {
  __$$RecipesSearchErrorImplCopyWithImpl(_$RecipesSearchErrorImpl _value,
      $Res Function(_$RecipesSearchErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesSearchErrorImpl implements RecipesSearchError {
  _$RecipesSearchErrorImpl();

  @override
  String toString() {
    return 'RecipesSearchState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesSearchErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipesSearchError implements RecipesSearchState {
  factory RecipesSearchError() = _$RecipesSearchErrorImpl;
}

/// @nodoc
abstract class _$$RecipesSearchReadyImplCopyWith<$Res> {
  factory _$$RecipesSearchReadyImplCopyWith(_$RecipesSearchReadyImpl value,
          $Res Function(_$RecipesSearchReadyImpl) then) =
      __$$RecipesSearchReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Suggestion> suggestions,
      List<String> ingredients,
      MealType mealType,
      SkillLevel skillLevel});
}

/// @nodoc
class __$$RecipesSearchReadyImplCopyWithImpl<$Res>
    extends _$RecipesSearchStateCopyWithImpl<$Res, _$RecipesSearchReadyImpl>
    implements _$$RecipesSearchReadyImplCopyWith<$Res> {
  __$$RecipesSearchReadyImplCopyWithImpl(_$RecipesSearchReadyImpl _value,
      $Res Function(_$RecipesSearchReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? ingredients = null,
    Object? mealType = null,
    Object? skillLevel = null,
  }) {
    return _then(_$RecipesSearchReadyImpl(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
      null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      null == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as SkillLevel,
    ));
  }
}

/// @nodoc

class _$RecipesSearchReadyImpl implements RecipesSearchReady {
  _$RecipesSearchReadyImpl(final List<Suggestion> suggestions,
      final List<String> ingredients, this.mealType, this.skillLevel)
      : _suggestions = suggestions,
        _ingredients = ingredients;

  final List<Suggestion> _suggestions;
  @override
  List<Suggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final MealType mealType;
  @override
  final SkillLevel skillLevel;

  @override
  String toString() {
    return 'RecipesSearchState.ready(suggestions: $suggestions, ingredients: $ingredients, mealType: $mealType, skillLevel: $skillLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSearchReadyImpl &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.skillLevel, skillLevel) ||
                other.skillLevel == skillLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestions),
      const DeepCollectionEquality().hash(_ingredients),
      mealType,
      skillLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesSearchReadyImplCopyWith<_$RecipesSearchReadyImpl> get copyWith =>
      __$$RecipesSearchReadyImplCopyWithImpl<_$RecipesSearchReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) {
    return ready(suggestions, ingredients, mealType, skillLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) {
    return ready?.call(suggestions, ingredients, mealType, skillLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(suggestions, ingredients, mealType, skillLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RecipesSearchReady implements RecipesSearchState {
  factory RecipesSearchReady(
      final List<Suggestion> suggestions,
      final List<String> ingredients,
      final MealType mealType,
      final SkillLevel skillLevel) = _$RecipesSearchReadyImpl;

  List<Suggestion> get suggestions;
  List<String> get ingredients;
  MealType get mealType;
  SkillLevel get skillLevel;
  @JsonKey(ignore: true)
  _$$RecipesSearchReadyImplCopyWith<_$RecipesSearchReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipeSearchDoneImplCopyWith<$Res> {
  factory _$$RecipeSearchDoneImplCopyWith(_$RecipeSearchDoneImpl value,
          $Res Function(_$RecipeSearchDoneImpl) then) =
      __$$RecipeSearchDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes, bool loadingMoreItems});
}

/// @nodoc
class __$$RecipeSearchDoneImplCopyWithImpl<$Res>
    extends _$RecipesSearchStateCopyWithImpl<$Res, _$RecipeSearchDoneImpl>
    implements _$$RecipeSearchDoneImplCopyWith<$Res> {
  __$$RecipeSearchDoneImplCopyWithImpl(_$RecipeSearchDoneImpl _value,
      $Res Function(_$RecipeSearchDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? loadingMoreItems = null,
  }) {
    return _then(_$RecipeSearchDoneImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      null == loadingMoreItems
          ? _value.loadingMoreItems
          : loadingMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeSearchDoneImpl implements RecipeSearchDone {
  _$RecipeSearchDoneImpl(final List<Recipe> recipes, this.loadingMoreItems)
      : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final bool loadingMoreItems;

  @override
  String toString() {
    return 'RecipesSearchState.done(recipes: $recipes, loadingMoreItems: $loadingMoreItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeSearchDoneImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.loadingMoreItems, loadingMoreItems) ||
                other.loadingMoreItems == loadingMoreItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recipes), loadingMoreItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeSearchDoneImplCopyWith<_$RecipeSearchDoneImpl> get copyWith =>
      __$$RecipeSearchDoneImplCopyWithImpl<_$RecipeSearchDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Suggestion> suggestions,
            List<String> ingredients, MealType mealType, SkillLevel skillLevel)
        ready,
    required TResult Function(List<Recipe> recipes, bool loadingMoreItems) done,
  }) {
    return done(recipes, loadingMoreItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult? Function(List<Recipe> recipes, bool loadingMoreItems)? done,
  }) {
    return done?.call(recipes, loadingMoreItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Suggestion> suggestions, List<String> ingredients,
            MealType mealType, SkillLevel skillLevel)?
        ready,
    TResult Function(List<Recipe> recipes, bool loadingMoreItems)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(recipes, loadingMoreItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesSearchInitial value) initial,
    required TResult Function(RecipesSearchLoading value) loading,
    required TResult Function(RecipesSearchError value) error,
    required TResult Function(RecipesSearchReady value) ready,
    required TResult Function(RecipeSearchDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesSearchInitial value)? initial,
    TResult? Function(RecipesSearchLoading value)? loading,
    TResult? Function(RecipesSearchError value)? error,
    TResult? Function(RecipesSearchReady value)? ready,
    TResult? Function(RecipeSearchDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesSearchInitial value)? initial,
    TResult Function(RecipesSearchLoading value)? loading,
    TResult Function(RecipesSearchError value)? error,
    TResult Function(RecipesSearchReady value)? ready,
    TResult Function(RecipeSearchDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class RecipeSearchDone implements RecipesSearchState {
  factory RecipeSearchDone(
          final List<Recipe> recipes, final bool loadingMoreItems) =
      _$RecipeSearchDoneImpl;

  List<Recipe> get recipes;
  bool get loadingMoreItems;
  @JsonKey(ignore: true)
  _$$RecipeSearchDoneImplCopyWith<_$RecipeSearchDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
