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
mixin _$RecipesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesStateCopyWith<$Res> {
  factory $RecipesStateCopyWith(
          RecipesState value, $Res Function(RecipesState) then) =
      _$RecipesStateCopyWithImpl<$Res, RecipesState>;
}

/// @nodoc
class _$RecipesStateCopyWithImpl<$Res, $Val extends RecipesState>
    implements $RecipesStateCopyWith<$Res> {
  _$RecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipesInitialCopyWith<$Res> {
  factory _$$RecipesInitialCopyWith(
          _$RecipesInitial value, $Res Function(_$RecipesInitial) then) =
      __$$RecipesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesInitialCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesInitial>
    implements _$$RecipesInitialCopyWith<$Res> {
  __$$RecipesInitialCopyWithImpl(
      _$RecipesInitial _value, $Res Function(_$RecipesInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesInitial implements RecipesInitial {
  _$RecipesInitial();

  @override
  String toString() {
    return 'RecipesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
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
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipesInitial implements RecipesState {
  factory RecipesInitial() = _$RecipesInitial;
}

/// @nodoc
abstract class _$$RecipesLoadingCopyWith<$Res> {
  factory _$$RecipesLoadingCopyWith(
          _$RecipesLoading value, $Res Function(_$RecipesLoading) then) =
      __$$RecipesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesLoadingCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesLoading>
    implements _$$RecipesLoadingCopyWith<$Res> {
  __$$RecipesLoadingCopyWithImpl(
      _$RecipesLoading _value, $Res Function(_$RecipesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesLoading implements RecipesLoading {
  _$RecipesLoading();

  @override
  String toString() {
    return 'RecipesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
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
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipesLoading implements RecipesState {
  factory RecipesLoading() = _$RecipesLoading;
}

/// @nodoc
abstract class _$$RecipesErrorCopyWith<$Res> {
  factory _$$RecipesErrorCopyWith(
          _$RecipesError value, $Res Function(_$RecipesError) then) =
      __$$RecipesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesErrorCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesError>
    implements _$$RecipesErrorCopyWith<$Res> {
  __$$RecipesErrorCopyWithImpl(
      _$RecipesError _value, $Res Function(_$RecipesError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesError implements RecipesError {
  _$RecipesError();

  @override
  String toString() {
    return 'RecipesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
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
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipesError implements RecipesState {
  factory RecipesError() = _$RecipesError;
}

/// @nodoc
abstract class _$$RecipesReadyCopyWith<$Res> {
  factory _$$RecipesReadyCopyWith(
          _$RecipesReady value, $Res Function(_$RecipesReady) then) =
      __$$RecipesReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$$RecipesReadyCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesReady>
    implements _$$RecipesReadyCopyWith<$Res> {
  __$$RecipesReadyCopyWithImpl(
      _$RecipesReady _value, $Res Function(_$RecipesReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RecipesReady(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$RecipesReady implements RecipesReady {
  _$RecipesReady(final List<Recipe> recipes) : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipesState.ready(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesReady &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesReadyCopyWith<_$RecipesReady> get copyWith =>
      __$$RecipesReadyCopyWithImpl<_$RecipesReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) {
    return ready(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) {
    return ready?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RecipesReady implements RecipesState {
  factory RecipesReady(final List<Recipe> recipes) = _$RecipesReady;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$$RecipesReadyCopyWith<_$RecipesReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesSearchCopyWith<$Res> {
  factory _$$RecipesSearchCopyWith(
          _$RecipesSearch value, $Res Function(_$RecipesSearch) then) =
      __$$RecipesSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> suggestions, List<String> selectedIngredients});
}

/// @nodoc
class __$$RecipesSearchCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesSearch>
    implements _$$RecipesSearchCopyWith<$Res> {
  __$$RecipesSearchCopyWithImpl(
      _$RecipesSearch _value, $Res Function(_$RecipesSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? selectedIngredients = null,
  }) {
    return _then(_$RecipesSearch(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == selectedIngredients
          ? _value._selectedIngredients
          : selectedIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RecipesSearch implements RecipesSearch {
  _$RecipesSearch(
      final List<String> suggestions, final List<String> selectedIngredients)
      : _suggestions = suggestions,
        _selectedIngredients = selectedIngredients;

  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  final List<String> _selectedIngredients;
  @override
  List<String> get selectedIngredients {
    if (_selectedIngredients is EqualUnmodifiableListView)
      return _selectedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIngredients);
  }

  @override
  String toString() {
    return 'RecipesState.search(suggestions: $suggestions, selectedIngredients: $selectedIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSearch &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            const DeepCollectionEquality()
                .equals(other._selectedIngredients, _selectedIngredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestions),
      const DeepCollectionEquality().hash(_selectedIngredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesSearchCopyWith<_$RecipesSearch> get copyWith =>
      __$$RecipesSearchCopyWithImpl<_$RecipesSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipes) ready,
    required TResult Function(
            List<String> suggestions, List<String> selectedIngredients)
        search,
  }) {
    return search(suggestions, selectedIngredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipes)? ready,
    TResult? Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
  }) {
    return search?.call(suggestions, selectedIngredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipes)? ready,
    TResult Function(
            List<String> suggestions, List<String> selectedIngredients)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(suggestions, selectedIngredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesError value) error,
    required TResult Function(RecipesReady value) ready,
    required TResult Function(RecipesSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesError value)? error,
    TResult? Function(RecipesReady value)? ready,
    TResult? Function(RecipesSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesError value)? error,
    TResult Function(RecipesReady value)? ready,
    TResult Function(RecipesSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class RecipesSearch implements RecipesState {
  factory RecipesSearch(final List<String> suggestions,
      final List<String> selectedIngredients) = _$RecipesSearch;

  List<String> get suggestions;
  List<String> get selectedIngredients;
  @JsonKey(ignore: true)
  _$$RecipesSearchCopyWith<_$RecipesSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
