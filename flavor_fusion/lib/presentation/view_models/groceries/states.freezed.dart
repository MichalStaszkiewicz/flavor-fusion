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
    required TResult Function(List<Grocery> groceries) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries)? ready,
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
abstract class _$$GroceriesInitialCopyWith<$Res> {
  factory _$$GroceriesInitialCopyWith(
          _$GroceriesInitial value, $Res Function(_$GroceriesInitial) then) =
      __$$GroceriesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesInitialCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesInitial>
    implements _$$GroceriesInitialCopyWith<$Res> {
  __$$GroceriesInitialCopyWithImpl(
      _$GroceriesInitial _value, $Res Function(_$GroceriesInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesInitial implements GroceriesInitial {
  _$GroceriesInitial();

  @override
  String toString() {
    return 'GroceriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries)? ready,
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
  factory GroceriesInitial() = _$GroceriesInitial;
}

/// @nodoc
abstract class _$$GroceriesLoadingCopyWith<$Res> {
  factory _$$GroceriesLoadingCopyWith(
          _$GroceriesLoading value, $Res Function(_$GroceriesLoading) then) =
      __$$GroceriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesLoadingCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesLoading>
    implements _$$GroceriesLoadingCopyWith<$Res> {
  __$$GroceriesLoadingCopyWithImpl(
      _$GroceriesLoading _value, $Res Function(_$GroceriesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesLoading implements GroceriesLoading {
  _$GroceriesLoading();

  @override
  String toString() {
    return 'GroceriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries)? ready,
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
  factory GroceriesLoading() = _$GroceriesLoading;
}

/// @nodoc
abstract class _$$GroceriesErrorCopyWith<$Res> {
  factory _$$GroceriesErrorCopyWith(
          _$GroceriesError value, $Res Function(_$GroceriesError) then) =
      __$$GroceriesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroceriesErrorCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesError>
    implements _$$GroceriesErrorCopyWith<$Res> {
  __$$GroceriesErrorCopyWithImpl(
      _$GroceriesError _value, $Res Function(_$GroceriesError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroceriesError implements GroceriesError {
  _$GroceriesError();

  @override
  String toString() {
    return 'GroceriesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroceriesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries) ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries)? ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries)? ready,
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
  factory GroceriesError() = _$GroceriesError;
}

/// @nodoc
abstract class _$$GroceriesReadyCopyWith<$Res> {
  factory _$$GroceriesReadyCopyWith(
          _$GroceriesReady value, $Res Function(_$GroceriesReady) then) =
      __$$GroceriesReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Grocery> groceries});
}

/// @nodoc
class __$$GroceriesReadyCopyWithImpl<$Res>
    extends _$GroceriesStateCopyWithImpl<$Res, _$GroceriesReady>
    implements _$$GroceriesReadyCopyWith<$Res> {
  __$$GroceriesReadyCopyWithImpl(
      _$GroceriesReady _value, $Res Function(_$GroceriesReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceries = null,
  }) {
    return _then(_$GroceriesReady(
      null == groceries
          ? _value._groceries
          : groceries // ignore: cast_nullable_to_non_nullable
              as List<Grocery>,
    ));
  }
}

/// @nodoc

class _$GroceriesReady implements GroceriesReady {
  _$GroceriesReady(final List<Grocery> groceries) : _groceries = groceries;

  final List<Grocery> _groceries;
  @override
  List<Grocery> get groceries {
    if (_groceries is EqualUnmodifiableListView) return _groceries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceries);
  }

  @override
  String toString() {
    return 'GroceriesState.ready(groceries: $groceries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceriesReady &&
            const DeepCollectionEquality()
                .equals(other._groceries, _groceries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groceries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceriesReadyCopyWith<_$GroceriesReady> get copyWith =>
      __$$GroceriesReadyCopyWithImpl<_$GroceriesReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Grocery> groceries) ready,
  }) {
    return ready(groceries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Grocery> groceries)? ready,
  }) {
    return ready?.call(groceries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Grocery> groceries)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(groceries);
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
  factory GroceriesReady(final List<Grocery> groceries) = _$GroceriesReady;

  List<Grocery> get groceries;
  @JsonKey(ignore: true)
  _$$GroceriesReadyCopyWith<_$GroceriesReady> get copyWith =>
      throw _privateConstructorUsedError;
}
