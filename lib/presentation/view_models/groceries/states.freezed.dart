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
mixin _$GroceriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceriesInitial value) initial,
    required TResult Function(GroceriesLoading value) loading,
    required TResult Function(GroceriesError value) error,
    required TResult Function(GroceriesReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceriesInitial value)? initial,
    TResult? Function(GroceriesLoading value)? loading,
    TResult? Function(GroceriesError value)? error,
    TResult? Function(GroceriesReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceriesInitial value)? initial,
    TResult Function(GroceriesLoading value)? loading,
    TResult Function(GroceriesError value)? error,
    TResult Function(GroceriesReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceriesStateCopyWith<$Res> {
  factory $GroceriesStateCopyWith(
          GroceriesState value, $Res Function(GroceriesState) then) =
      _$GroceriesStateCopyWithImpl<$Res, GroceriesState>;
}

/// @nodoc
class _$GroceriesStateCopyWithImpl<$Res, $Val extends GroceriesState>
    implements $GroceriesStateCopyWith<$Res> {
  _$GroceriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroceriesInitialImplCopyWith<$Res> {
  factory _$$GroceriesInitialImplCopyWith(_$GroceriesInitialImpl value,
          $Res Function(_$GroceriesInitialImpl) then) =
      __$$GroceriesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesInitialImplCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesInitialImpl>
    implements _$$GroceriesInitialImplCopyWith<$Res> {
  __$$GroceriesInitialImplCopyWithImpl(_$GroceriesInitialImpl _value,
      $Res Function(_$GroceriesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesInitialImpl implements GroceriesInitial {
  _$GroceriesInitialImpl();

  @override
  String toString() {
    return 'GroceriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)
        ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
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
    required TResult Function(GroceriesInitial value) initial,
    required TResult Function(GroceriesLoading value) loading,
    required TResult Function(GroceriesError value) error,
    required TResult Function(GroceriesReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceriesInitial value)? initial,
    TResult? Function(GroceriesLoading value)? loading,
    TResult? Function(GroceriesError value)? error,
    TResult? Function(GroceriesReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceriesInitial value)? initial,
    TResult Function(GroceriesLoading value)? loading,
    TResult Function(GroceriesError value)? error,
    TResult Function(GroceriesReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GroceriesInitial implements GroceriesState {
  factory GroceriesInitial() = _$GroceriesInitialImpl;
}

/// @nodoc
abstract class _$$GroceriesLoadingImplCopyWith<$Res> {
  factory _$$GroceriesLoadingImplCopyWith(_$GroceriesLoadingImpl value,
          $Res Function(_$GroceriesLoadingImpl) then) =
      __$$GroceriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesLoadingImplCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesLoadingImpl>
    implements _$$GroceriesLoadingImplCopyWith<$Res> {
  __$$GroceriesLoadingImplCopyWithImpl(_$GroceriesLoadingImpl _value,
      $Res Function(_$GroceriesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesLoadingImpl implements GroceriesLoading {
  _$GroceriesLoadingImpl();

  @override
  String toString() {
    return 'GroceriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)
        ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
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
    required TResult Function(GroceriesInitial value) initial,
    required TResult Function(GroceriesLoading value) loading,
    required TResult Function(GroceriesError value) error,
    required TResult Function(GroceriesReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceriesInitial value)? initial,
    TResult? Function(GroceriesLoading value)? loading,
    TResult? Function(GroceriesError value)? error,
    TResult? Function(GroceriesReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceriesInitial value)? initial,
    TResult Function(GroceriesLoading value)? loading,
    TResult Function(GroceriesError value)? error,
    TResult Function(GroceriesReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroceriesLoading implements GroceriesState {
  factory GroceriesLoading() = _$GroceriesLoadingImpl;
}

/// @nodoc
abstract class _$$GroceriesErrorImplCopyWith<$Res> {
  factory _$$GroceriesErrorImplCopyWith(_$GroceriesErrorImpl value,
          $Res Function(_$GroceriesErrorImpl) then) =
      __$$GroceriesErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesErrorImplCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesErrorImpl>
    implements _$$GroceriesErrorImplCopyWith<$Res> {
  __$$GroceriesErrorImplCopyWithImpl(
      _$GroceriesErrorImpl _value, $Res Function(_$GroceriesErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesErrorImpl implements GroceriesError {
  _$GroceriesErrorImpl();

  @override
  String toString() {
    return 'GroceriesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)
        ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
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
    required TResult Function(GroceriesInitial value) initial,
    required TResult Function(GroceriesLoading value) loading,
    required TResult Function(GroceriesError value) error,
    required TResult Function(GroceriesReady value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceriesInitial value)? initial,
    TResult? Function(GroceriesLoading value)? loading,
    TResult? Function(GroceriesError value)? error,
    TResult? Function(GroceriesReady value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceriesInitial value)? initial,
    TResult Function(GroceriesLoading value)? loading,
    TResult Function(GroceriesError value)? error,
    TResult Function(GroceriesReady value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GroceriesError implements GroceriesState {
  factory GroceriesError() = _$GroceriesErrorImpl;
}

/// @nodoc
abstract class _$$GroceriesReadyImplCopyWith<$Res> {
  factory _$$GroceriesReadyImplCopyWith(_$GroceriesReadyImpl value,
          $Res Function(_$GroceriesReadyImpl) then) =
      __$$GroceriesReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Grocery> groceries,
      int selected,
      List<Map<int, AnimationController>> ingredinetsControllers});
}

/// @nodoc
class __$$GroceriesReadyImplCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesReadyImpl>
    implements _$$GroceriesReadyImplCopyWith<$Res> {
  __$$GroceriesReadyImplCopyWithImpl(
      _$GroceriesReadyImpl _value, $Res Function(_$GroceriesReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceries = null,
    Object? selected = null,
    Object? ingredinetsControllers = null,
  }) {
    return _then(_$GroceriesReadyImpl(
      null == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
      null == ingredinetsControllers
          ? _value._ingredinetsControllers
          : ingredinetsControllers // ignore: cast_nullable_to_non_nullable
              as List<Map<int, AnimationController>>,
    ));
  }
}

/// @nodoc

class _$GroceriesReadyImpl implements GroceriesReady {
  _$GroceriesReadyImpl(final List<Grocery> groceries, this.selected,
      final List<Map<int, AnimationController>> ingredinetsControllers)
      : _groceries = groceries,
        _ingredinetsControllers = ingredinetsControllers;

  final List<Grocery> _groceries;
  @override
  List<Grocery> get groceries {
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceries);
  }

  @override
  final int selected;
  final List<Map<int, AnimationController>> _ingredinetsControllers;
  @override
  List<Map<int, AnimationController>> get ingredinetsControllers {
    if (_ingredinetsControllers is EqualUnmodifiableListView)
      return _ingredinetsControllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredinetsControllers);
  }

  @override
  String toString() {
    return 'GroceriesState.ready(groceries: $groceries, selected: $selected, ingredinetsControllers: $ingredinetsControllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceriesReadyImpl &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(
                other._ingredinetsControllers, _ingredinetsControllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groceries),
      selected,
      const DeepCollectionEquality().hash(_ingredinetsControllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceriesReadyImplCopyWith<_$GroceriesReadyImpl> get copyWith =>
      __$$GroceriesReadyImplCopyWithImpl<_$GroceriesReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)
        ready,
  }) {
    return ready(groceries, selected, ingredinetsControllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
  }) {
    return ready?.call(groceries, selected, ingredinetsControllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries, int selected,
            List<Map<int, AnimationController>> ingredinetsControllers)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(groceries, selected, ingredinetsControllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroceriesInitial value) initial,
    required TResult Function(GroceriesLoading value) loading,
    required TResult Function(GroceriesError value) error,
    required TResult Function(GroceriesReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroceriesInitial value)? initial,
    TResult? Function(GroceriesLoading value)? loading,
    TResult? Function(GroceriesError value)? error,
    TResult? Function(GroceriesReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroceriesInitial value)? initial,
    TResult Function(GroceriesLoading value)? loading,
    TResult Function(GroceriesError value)? error,
    TResult Function(GroceriesReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class GroceriesReady implements GroceriesState {
  factory GroceriesReady(final List<Grocery> groceries, final int selected,
          final List<Map<int, AnimationController>> ingredinetsControllers) =
      _$GroceriesReadyImpl;

  List<Grocery> get groceries;
  int get selected;
  List<Map<int, AnimationController>> get ingredinetsControllers;
  @JsonKey(ignore: true)
  _$$GroceriesReadyImplCopyWith<_$GroceriesReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
