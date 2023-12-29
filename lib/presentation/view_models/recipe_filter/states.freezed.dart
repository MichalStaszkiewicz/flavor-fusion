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
mixin _$RecipeFilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            SortBy sortBy, double minimumTime, double minimumCalories)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            SortBy sortBy, double minimumTime, double minimumCalories)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortBy, double minimumTime, double minimumCalories)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeFilterInitial value) initial,
    required TResult Function(RecipeFilterLoading value) loading,
    required TResult Function(RecipeFilterError value) error,
    required TResult Function(RecipeFilterReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeFilterInitial value)? initial,
    TResult? Function(RecipeFilterLoading value)? loading,
    TResult? Function(RecipeFilterError value)? error,
    TResult? Function(RecipeFilterReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeFilterInitial value)? initial,
    TResult Function(RecipeFilterLoading value)? loading,
    TResult Function(RecipeFilterError value)? error,
    TResult Function(RecipeFilterReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFilterStateCopyWith<$Res> {
  factory $RecipeFilterStateCopyWith(
          RecipeFilterState value, $Res Function(RecipeFilterState) then) =
      _$RecipeFilterStateCopyWithImpl<$Res, RecipeFilterState>;
}

/// @nodoc
class _$RecipeFilterStateCopyWithImpl<$Res, $Val extends RecipeFilterState>
    implements $RecipeFilterStateCopyWith<$Res> {
  _$RecipeFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeFilterInitialImplCopyWith<$Res> {
  factory _$$RecipeFilterInitialImplCopyWith(_$RecipeFilterInitialImpl value,
          $Res Function(_$RecipeFilterInitialImpl) then) =
      __$$RecipeFilterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeFilterInitialImplCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res, _$RecipeFilterInitialImpl>
    implements _$$RecipeFilterInitialImplCopyWith<$Res> {
  __$$RecipeFilterInitialImplCopyWithImpl(_$RecipeFilterInitialImpl _value,
      $Res Function(_$RecipeFilterInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeFilterInitialImpl implements RecipeFilterInitial {
  _$RecipeFilterInitialImpl();

  @override
  String toString() {
    return 'RecipeFilterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeFilterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            SortBy sortBy, double minimumTime, double minimumCalories)
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
    TResult? Function(
            SortBy sortBy, double minimumTime, double minimumCalories)?
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
    TResult Function(SortBy sortBy, double minimumTime, double minimumCalories)?
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
    required TResult Function(RecipeFilterInitial value) initial,
    required TResult Function(RecipeFilterLoading value) loading,
    required TResult Function(RecipeFilterError value) error,
    required TResult Function(RecipeFilterReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeFilterInitial value)? initial,
    TResult? Function(RecipeFilterLoading value)? loading,
    TResult? Function(RecipeFilterError value)? error,
    TResult? Function(RecipeFilterReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeFilterInitial value)? initial,
    TResult Function(RecipeFilterLoading value)? loading,
    TResult Function(RecipeFilterError value)? error,
    TResult Function(RecipeFilterReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipeFilterInitial implements RecipeFilterState {
  factory RecipeFilterInitial() = _$RecipeFilterInitialImpl;
}

/// @nodoc
abstract class _$$RecipeFilterLoadingImplCopyWith<$Res> {
  factory _$$RecipeFilterLoadingImplCopyWith(_$RecipeFilterLoadingImpl value,
          $Res Function(_$RecipeFilterLoadingImpl) then) =
      __$$RecipeFilterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeFilterLoadingImplCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res, _$RecipeFilterLoadingImpl>
    implements _$$RecipeFilterLoadingImplCopyWith<$Res> {
  __$$RecipeFilterLoadingImplCopyWithImpl(_$RecipeFilterLoadingImpl _value,
      $Res Function(_$RecipeFilterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeFilterLoadingImpl implements RecipeFilterLoading {
  _$RecipeFilterLoadingImpl();

  @override
  String toString() {
    return 'RecipeFilterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeFilterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            SortBy sortBy, double minimumTime, double minimumCalories)
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
    TResult? Function(
            SortBy sortBy, double minimumTime, double minimumCalories)?
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
    TResult Function(SortBy sortBy, double minimumTime, double minimumCalories)?
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
    required TResult Function(RecipeFilterInitial value) initial,
    required TResult Function(RecipeFilterLoading value) loading,
    required TResult Function(RecipeFilterError value) error,
    required TResult Function(RecipeFilterReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeFilterInitial value)? initial,
    TResult? Function(RecipeFilterLoading value)? loading,
    TResult? Function(RecipeFilterError value)? error,
    TResult? Function(RecipeFilterReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeFilterInitial value)? initial,
    TResult Function(RecipeFilterLoading value)? loading,
    TResult Function(RecipeFilterError value)? error,
    TResult Function(RecipeFilterReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeFilterLoading implements RecipeFilterState {
  factory RecipeFilterLoading() = _$RecipeFilterLoadingImpl;
}

/// @nodoc
abstract class _$$RecipeFilterErrorImplCopyWith<$Res> {
  factory _$$RecipeFilterErrorImplCopyWith(_$RecipeFilterErrorImpl value,
          $Res Function(_$RecipeFilterErrorImpl) then) =
      __$$RecipeFilterErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeFilterErrorImplCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res, _$RecipeFilterErrorImpl>
    implements _$$RecipeFilterErrorImplCopyWith<$Res> {
  __$$RecipeFilterErrorImplCopyWithImpl(_$RecipeFilterErrorImpl _value,
      $Res Function(_$RecipeFilterErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeFilterErrorImpl implements RecipeFilterError {
  _$RecipeFilterErrorImpl();

  @override
  String toString() {
    return 'RecipeFilterState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeFilterErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            SortBy sortBy, double minimumTime, double minimumCalories)
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
    TResult? Function(
            SortBy sortBy, double minimumTime, double minimumCalories)?
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
    TResult Function(SortBy sortBy, double minimumTime, double minimumCalories)?
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
    required TResult Function(RecipeFilterInitial value) initial,
    required TResult Function(RecipeFilterLoading value) loading,
    required TResult Function(RecipeFilterError value) error,
    required TResult Function(RecipeFilterReady value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeFilterInitial value)? initial,
    TResult? Function(RecipeFilterLoading value)? loading,
    TResult? Function(RecipeFilterError value)? error,
    TResult? Function(RecipeFilterReady value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeFilterInitial value)? initial,
    TResult Function(RecipeFilterLoading value)? loading,
    TResult Function(RecipeFilterError value)? error,
    TResult Function(RecipeFilterReady value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipeFilterError implements RecipeFilterState {
  factory RecipeFilterError() = _$RecipeFilterErrorImpl;
}

/// @nodoc
abstract class _$$RecipeFilterReadyImplCopyWith<$Res> {
  factory _$$RecipeFilterReadyImplCopyWith(_$RecipeFilterReadyImpl value,
          $Res Function(_$RecipeFilterReadyImpl) then) =
      __$$RecipeFilterReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortBy sortBy, double minimumTime, double minimumCalories});
}

/// @nodoc
class __$$RecipeFilterReadyImplCopyWithImpl<$Res>
    extends _$RecipeFilterStateCopyWithImpl<$Res, _$RecipeFilterReadyImpl>
    implements _$$RecipeFilterReadyImplCopyWith<$Res> {
  __$$RecipeFilterReadyImplCopyWithImpl(_$RecipeFilterReadyImpl _value,
      $Res Function(_$RecipeFilterReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? minimumTime = null,
    Object? minimumCalories = null,
  }) {
    return _then(_$RecipeFilterReadyImpl(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      null == minimumTime
          ? _value.minimumTime
          : minimumTime // ignore: cast_nullable_to_non_nullable
              as double,
      null == minimumCalories
          ? _value.minimumCalories
          : minimumCalories // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RecipeFilterReadyImpl implements RecipeFilterReady {
  _$RecipeFilterReadyImpl(this.sortBy, this.minimumTime, this.minimumCalories);

  @override
  final SortBy sortBy;
  @override
  final double minimumTime;
  @override
  final double minimumCalories;

  @override
  String toString() {
    return 'RecipeFilterState.ready(sortBy: $sortBy, minimumTime: $minimumTime, minimumCalories: $minimumCalories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeFilterReadyImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.minimumTime, minimumTime) ||
                other.minimumTime == minimumTime) &&
            (identical(other.minimumCalories, minimumCalories) ||
                other.minimumCalories == minimumCalories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sortBy, minimumTime, minimumCalories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeFilterReadyImplCopyWith<_$RecipeFilterReadyImpl> get copyWith =>
      __$$RecipeFilterReadyImplCopyWithImpl<_$RecipeFilterReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            SortBy sortBy, double minimumTime, double minimumCalories)
        ready,
  }) {
    return ready(sortBy, minimumTime, minimumCalories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            SortBy sortBy, double minimumTime, double minimumCalories)?
        ready,
  }) {
    return ready?.call(sortBy, minimumTime, minimumCalories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortBy, double minimumTime, double minimumCalories)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(sortBy, minimumTime, minimumCalories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeFilterInitial value) initial,
    required TResult Function(RecipeFilterLoading value) loading,
    required TResult Function(RecipeFilterError value) error,
    required TResult Function(RecipeFilterReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeFilterInitial value)? initial,
    TResult? Function(RecipeFilterLoading value)? loading,
    TResult? Function(RecipeFilterError value)? error,
    TResult? Function(RecipeFilterReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeFilterInitial value)? initial,
    TResult Function(RecipeFilterLoading value)? loading,
    TResult Function(RecipeFilterError value)? error,
    TResult Function(RecipeFilterReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RecipeFilterReady implements RecipeFilterState {
  factory RecipeFilterReady(final SortBy sortBy, final double minimumTime,
      final double minimumCalories) = _$RecipeFilterReadyImpl;

  SortBy get sortBy;
  double get minimumTime;
  double get minimumCalories;
  @JsonKey(ignore: true)
  _$$RecipeFilterReadyImplCopyWith<_$RecipeFilterReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
