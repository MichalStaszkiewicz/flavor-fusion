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
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipies) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipies)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipies)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteError value) error,
    required TResult Function(FavoriteReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteError value)? error,
    TResult? Function(FavoriteReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteError value)? error,
    TResult Function(FavoriteReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteInitialCopyWith<$Res> {
  factory _$$FavoriteInitialCopyWith(
          _$FavoriteInitial value, $Res Function(_$FavoriteInitial) then) =
      __$$FavoriteInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteInitialCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteInitial>
    implements _$$FavoriteInitialCopyWith<$Res> {
  __$$FavoriteInitialCopyWithImpl(
      _$FavoriteInitial _value, $Res Function(_$FavoriteInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteInitial implements FavoriteInitial {
  _$FavoriteInitial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipies) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipies)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipies)? ready,
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
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteError value) error,
    required TResult Function(FavoriteReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteError value)? error,
    TResult? Function(FavoriteReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteError value)? error,
    TResult Function(FavoriteReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoriteInitial implements FavoriteState {
  factory FavoriteInitial() = _$FavoriteInitial;
}

/// @nodoc
abstract class _$$FavoriteLoadingCopyWith<$Res> {
  factory _$$FavoriteLoadingCopyWith(
          _$FavoriteLoading value, $Res Function(_$FavoriteLoading) then) =
      __$$FavoriteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteLoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteLoading>
    implements _$$FavoriteLoadingCopyWith<$Res> {
  __$$FavoriteLoadingCopyWithImpl(
      _$FavoriteLoading _value, $Res Function(_$FavoriteLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteLoading implements FavoriteLoading {
  _$FavoriteLoading();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipies) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipies)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipies)? ready,
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
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteError value) error,
    required TResult Function(FavoriteReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteError value)? error,
    TResult? Function(FavoriteReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteError value)? error,
    TResult Function(FavoriteReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoading implements FavoriteState {
  factory FavoriteLoading() = _$FavoriteLoading;
}

/// @nodoc
abstract class _$$FavoriteErrorCopyWith<$Res> {
  factory _$$FavoriteErrorCopyWith(
          _$FavoriteError value, $Res Function(_$FavoriteError) then) =
      __$$FavoriteErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteError>
    implements _$$FavoriteErrorCopyWith<$Res> {
  __$$FavoriteErrorCopyWithImpl(
      _$FavoriteError _value, $Res Function(_$FavoriteError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteError implements FavoriteError {
  _$FavoriteError();

  @override
  String toString() {
    return 'FavoriteState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipies) ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipies)? ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipies)? ready,
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
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteError value) error,
    required TResult Function(FavoriteReady value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteError value)? error,
    TResult? Function(FavoriteReady value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteError value)? error,
    TResult Function(FavoriteReady value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteError implements FavoriteState {
  factory FavoriteError() = _$FavoriteError;
}

/// @nodoc
abstract class _$$FavoriteReadyCopyWith<$Res> {
  factory _$$FavoriteReadyCopyWith(
          _$FavoriteReady value, $Res Function(_$FavoriteReady) then) =
      __$$FavoriteReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipies});
}

/// @nodoc
class __$$FavoriteReadyCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteReady>
    implements _$$FavoriteReadyCopyWith<$Res> {
  __$$FavoriteReadyCopyWithImpl(
      _$FavoriteReady _value, $Res Function(_$FavoriteReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipies = null,
  }) {
    return _then(_$FavoriteReady(
      null == recipies
          ? _value._recipies
          : recipies // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$FavoriteReady implements FavoriteReady {
  _$FavoriteReady(final List<Recipe> recipies) : _recipies = recipies;

  final List<Recipe> _recipies;
  @override
  List<Recipe> get recipies {
    if (_recipies is EqualUnmodifiableListView) return _recipies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipies);
  }

  @override
  String toString() {
    return 'FavoriteState.ready(recipies: $recipies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteReady &&
            const DeepCollectionEquality().equals(other._recipies, _recipies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteReadyCopyWith<_$FavoriteReady> get copyWith =>
      __$$FavoriteReadyCopyWithImpl<_$FavoriteReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Recipe> recipies) ready,
  }) {
    return ready(recipies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Recipe> recipies)? ready,
  }) {
    return ready?.call(recipies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Recipe> recipies)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(recipies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteInitial value) initial,
    required TResult Function(FavoriteLoading value) loading,
    required TResult Function(FavoriteError value) error,
    required TResult Function(FavoriteReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteInitial value)? initial,
    TResult? Function(FavoriteLoading value)? loading,
    TResult? Function(FavoriteError value)? error,
    TResult? Function(FavoriteReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteInitial value)? initial,
    TResult Function(FavoriteLoading value)? loading,
    TResult Function(FavoriteError value)? error,
    TResult Function(FavoriteReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class FavoriteReady implements FavoriteState {
  factory FavoriteReady(final List<Recipe> recipies) = _$FavoriteReady;

  List<Recipe> get recipies;
  @JsonKey(ignore: true)
  _$$FavoriteReadyCopyWith<_$FavoriteReady> get copyWith =>
      throw _privateConstructorUsedError;
}
