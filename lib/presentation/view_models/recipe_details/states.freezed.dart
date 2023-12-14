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
mixin _$RecipeDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool expanded, bool isFavorite) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool expanded, bool isFavorite)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool expanded, bool isFavorite)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeDetailsInitial value) initial,
    required TResult Function(RecipeDetailsLoading value) loading,
    required TResult Function(RecipeDetailsError value) error,
    required TResult Function(RecipeDetailsReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailsInitial value)? initial,
    TResult? Function(RecipeDetailsLoading value)? loading,
    TResult? Function(RecipeDetailsError value)? error,
    TResult? Function(RecipeDetailsReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeDetailsInitial value)? initial,
    TResult Function(RecipeDetailsLoading value)? loading,
    TResult Function(RecipeDetailsError value)? error,
    TResult Function(RecipeDetailsReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsStateCopyWith<$Res> {
  factory $RecipeDetailsStateCopyWith(
          RecipeDetailsState value, $Res Function(RecipeDetailsState) then) =
      _$RecipeDetailsStateCopyWithImpl<$Res, RecipeDetailsState>;
}

/// @nodoc
class _$RecipeDetailsStateCopyWithImpl<$Res, $Val extends RecipeDetailsState>
    implements $RecipeDetailsStateCopyWith<$Res> {
  _$RecipeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeDetailsInitialImplCopyWith<$Res> {
  factory _$$RecipeDetailsInitialImplCopyWith(_$RecipeDetailsInitialImpl value,
          $Res Function(_$RecipeDetailsInitialImpl) then) =
      __$$RecipeDetailsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeDetailsInitialImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsInitialImpl>
    implements _$$RecipeDetailsInitialImplCopyWith<$Res> {
  __$$RecipeDetailsInitialImplCopyWithImpl(_$RecipeDetailsInitialImpl _value,
      $Res Function(_$RecipeDetailsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeDetailsInitialImpl implements RecipeDetailsInitial {
  _$RecipeDetailsInitialImpl();

  @override
  String toString() {
    return 'RecipeDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool expanded, bool isFavorite) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool expanded, bool isFavorite)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool expanded, bool isFavorite)? ready,
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
    required TResult Function(RecipeDetailsInitial value) initial,
    required TResult Function(RecipeDetailsLoading value) loading,
    required TResult Function(RecipeDetailsError value) error,
    required TResult Function(RecipeDetailsReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailsInitial value)? initial,
    TResult? Function(RecipeDetailsLoading value)? loading,
    TResult? Function(RecipeDetailsError value)? error,
    TResult? Function(RecipeDetailsReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeDetailsInitial value)? initial,
    TResult Function(RecipeDetailsLoading value)? loading,
    TResult Function(RecipeDetailsError value)? error,
    TResult Function(RecipeDetailsReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipeDetailsInitial implements RecipeDetailsState {
  factory RecipeDetailsInitial() = _$RecipeDetailsInitialImpl;
}

/// @nodoc
abstract class _$$RecipeDetailsLoadingImplCopyWith<$Res> {
  factory _$$RecipeDetailsLoadingImplCopyWith(_$RecipeDetailsLoadingImpl value,
          $Res Function(_$RecipeDetailsLoadingImpl) then) =
      __$$RecipeDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeDetailsLoadingImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsLoadingImpl>
    implements _$$RecipeDetailsLoadingImplCopyWith<$Res> {
  __$$RecipeDetailsLoadingImplCopyWithImpl(_$RecipeDetailsLoadingImpl _value,
      $Res Function(_$RecipeDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeDetailsLoadingImpl implements RecipeDetailsLoading {
  _$RecipeDetailsLoadingImpl();

  @override
  String toString() {
    return 'RecipeDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool expanded, bool isFavorite) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool expanded, bool isFavorite)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool expanded, bool isFavorite)? ready,
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
    required TResult Function(RecipeDetailsInitial value) initial,
    required TResult Function(RecipeDetailsLoading value) loading,
    required TResult Function(RecipeDetailsError value) error,
    required TResult Function(RecipeDetailsReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailsInitial value)? initial,
    TResult? Function(RecipeDetailsLoading value)? loading,
    TResult? Function(RecipeDetailsError value)? error,
    TResult? Function(RecipeDetailsReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeDetailsInitial value)? initial,
    TResult Function(RecipeDetailsLoading value)? loading,
    TResult Function(RecipeDetailsError value)? error,
    TResult Function(RecipeDetailsReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeDetailsLoading implements RecipeDetailsState {
  factory RecipeDetailsLoading() = _$RecipeDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$RecipeDetailsErrorImplCopyWith<$Res> {
  factory _$$RecipeDetailsErrorImplCopyWith(_$RecipeDetailsErrorImpl value,
          $Res Function(_$RecipeDetailsErrorImpl) then) =
      __$$RecipeDetailsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeDetailsErrorImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsErrorImpl>
    implements _$$RecipeDetailsErrorImplCopyWith<$Res> {
  __$$RecipeDetailsErrorImplCopyWithImpl(_$RecipeDetailsErrorImpl _value,
      $Res Function(_$RecipeDetailsErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeDetailsErrorImpl implements RecipeDetailsError {
  _$RecipeDetailsErrorImpl();

  @override
  String toString() {
    return 'RecipeDetailsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeDetailsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool expanded, bool isFavorite) ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool expanded, bool isFavorite)? ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool expanded, bool isFavorite)? ready,
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
    required TResult Function(RecipeDetailsInitial value) initial,
    required TResult Function(RecipeDetailsLoading value) loading,
    required TResult Function(RecipeDetailsError value) error,
    required TResult Function(RecipeDetailsReady value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailsInitial value)? initial,
    TResult? Function(RecipeDetailsLoading value)? loading,
    TResult? Function(RecipeDetailsError value)? error,
    TResult? Function(RecipeDetailsReady value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeDetailsInitial value)? initial,
    TResult Function(RecipeDetailsLoading value)? loading,
    TResult Function(RecipeDetailsError value)? error,
    TResult Function(RecipeDetailsReady value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipeDetailsError implements RecipeDetailsState {
  factory RecipeDetailsError() = _$RecipeDetailsErrorImpl;
}

/// @nodoc
abstract class _$$RecipeDetailsReadyImplCopyWith<$Res> {
  factory _$$RecipeDetailsReadyImplCopyWith(_$RecipeDetailsReadyImpl value,
          $Res Function(_$RecipeDetailsReadyImpl) then) =
      __$$RecipeDetailsReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool expanded, bool isFavorite});
}

/// @nodoc
class __$$RecipeDetailsReadyImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsReadyImpl>
    implements _$$RecipeDetailsReadyImplCopyWith<$Res> {
  __$$RecipeDetailsReadyImplCopyWithImpl(_$RecipeDetailsReadyImpl _value,
      $Res Function(_$RecipeDetailsReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expanded = null,
    Object? isFavorite = null,
  }) {
    return _then(_$RecipeDetailsReadyImpl(
      null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeDetailsReadyImpl implements RecipeDetailsReady {
  _$RecipeDetailsReadyImpl(this.expanded, this.isFavorite);

  @override
  final bool expanded;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'RecipeDetailsState.ready(expanded: $expanded, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsReadyImpl &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expanded, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsReadyImplCopyWith<_$RecipeDetailsReadyImpl> get copyWith =>
      __$$RecipeDetailsReadyImplCopyWithImpl<_$RecipeDetailsReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool expanded, bool isFavorite) ready,
  }) {
    return ready(expanded, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool expanded, bool isFavorite)? ready,
  }) {
    return ready?.call(expanded, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool expanded, bool isFavorite)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(expanded, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeDetailsInitial value) initial,
    required TResult Function(RecipeDetailsLoading value) loading,
    required TResult Function(RecipeDetailsError value) error,
    required TResult Function(RecipeDetailsReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeDetailsInitial value)? initial,
    TResult? Function(RecipeDetailsLoading value)? loading,
    TResult? Function(RecipeDetailsError value)? error,
    TResult? Function(RecipeDetailsReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeDetailsInitial value)? initial,
    TResult Function(RecipeDetailsLoading value)? loading,
    TResult Function(RecipeDetailsError value)? error,
    TResult Function(RecipeDetailsReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RecipeDetailsReady implements RecipeDetailsState {
  factory RecipeDetailsReady(final bool expanded, final bool isFavorite) =
      _$RecipeDetailsReadyImpl;

  bool get expanded;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$RecipeDetailsReadyImplCopyWith<_$RecipeDetailsReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
