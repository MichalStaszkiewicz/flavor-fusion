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
abstract class _$$FavoriteInitialImplCopyWith<$Res> {
  factory _$$FavoriteInitialImplCopyWith(_$FavoriteInitialImpl value,
          $Res Function(_$FavoriteInitialImpl) then) =
      __$$FavoriteInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteInitialImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteInitialImpl>
    implements _$$FavoriteInitialImplCopyWith<$Res> {
  __$$FavoriteInitialImplCopyWithImpl(
      _$FavoriteInitialImpl _value, $Res Function(_$FavoriteInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteInitialImpl implements FavoriteInitial {
  _$FavoriteInitialImpl();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteInitialImpl);
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
  factory FavoriteInitial() = _$FavoriteInitialImpl;
}

/// @nodoc
abstract class _$$FavoriteLoadingImplCopyWith<$Res> {
  factory _$$FavoriteLoadingImplCopyWith(_$FavoriteLoadingImpl value,
          $Res Function(_$FavoriteLoadingImpl) then) =
      __$$FavoriteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteLoadingImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteLoadingImpl>
    implements _$$FavoriteLoadingImplCopyWith<$Res> {
  __$$FavoriteLoadingImplCopyWithImpl(
      _$FavoriteLoadingImpl _value, $Res Function(_$FavoriteLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteLoadingImpl implements FavoriteLoading {
  _$FavoriteLoadingImpl();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteLoadingImpl);
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
  factory FavoriteLoading() = _$FavoriteLoadingImpl;
}

/// @nodoc
abstract class _$$FavoriteErrorImplCopyWith<$Res> {
  factory _$$FavoriteErrorImplCopyWith(
          _$FavoriteErrorImpl value, $Res Function(_$FavoriteErrorImpl) then) =
      __$$FavoriteErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteErrorImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteErrorImpl>
    implements _$$FavoriteErrorImplCopyWith<$Res> {
  __$$FavoriteErrorImplCopyWithImpl(
      _$FavoriteErrorImpl _value, $Res Function(_$FavoriteErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteErrorImpl implements FavoriteError {
  _$FavoriteErrorImpl();

  @override
  String toString() {
    return 'FavoriteState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteErrorImpl);
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
  factory FavoriteError() = _$FavoriteErrorImpl;
}

/// @nodoc
abstract class _$$FavoriteReadyImplCopyWith<$Res> {
  factory _$$FavoriteReadyImplCopyWith(
          _$FavoriteReadyImpl value, $Res Function(_$FavoriteReadyImpl) then) =
      __$$FavoriteReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipies});
}

/// @nodoc
class __$$FavoriteReadyImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteReadyImpl>
    implements _$$FavoriteReadyImplCopyWith<$Res> {
  __$$FavoriteReadyImplCopyWithImpl(
      _$FavoriteReadyImpl _value, $Res Function(_$FavoriteReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipies = null,
  }) {
    return _then(_$FavoriteReadyImpl(
      null == recipies
          ? _value._recipies
          : recipies // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$FavoriteReadyImpl implements FavoriteReady {
  _$FavoriteReadyImpl(final List<Recipe> recipies) : _recipies = recipies;

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
            other is _$FavoriteReadyImpl &&
            const DeepCollectionEquality().equals(other._recipies, _recipies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteReadyImplCopyWith<_$FavoriteReadyImpl> get copyWith =>
      __$$FavoriteReadyImplCopyWithImpl<_$FavoriteReadyImpl>(this, _$identity);

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
  factory FavoriteReady(final List<Recipe> recipies) = _$FavoriteReadyImpl;

  List<Recipe> get recipies;
  @JsonKey(ignore: true)
  _$$FavoriteReadyImplCopyWith<_$FavoriteReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
