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
mixin _$RecipeSortState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(SortBy sortType) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(SortBy sortType)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortType)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeSortIniital value) initial,
    required TResult Function(RecipeSortLoading value) loading,
    required TResult Function(RecipeSortError value) error,
    required TResult Function(RecipeSortReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeSortIniital value)? initial,
    TResult? Function(RecipeSortLoading value)? loading,
    TResult? Function(RecipeSortError value)? error,
    TResult? Function(RecipeSortReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeSortIniital value)? initial,
    TResult Function(RecipeSortLoading value)? loading,
    TResult Function(RecipeSortError value)? error,
    TResult Function(RecipeSortReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeSortStateCopyWith<$Res> {
  factory $RecipeSortStateCopyWith(
          RecipeSortState value, $Res Function(RecipeSortState) then) =
      _$RecipeSortStateCopyWithImpl<$Res, RecipeSortState>;
}

/// @nodoc
class _$RecipeSortStateCopyWithImpl<$Res, $Val extends RecipeSortState>
    implements $RecipeSortStateCopyWith<$Res> {
  _$RecipeSortStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeSortIniitalCopyWith<$Res> {
  factory _$$RecipeSortIniitalCopyWith(
          _$RecipeSortIniital value, $Res Function(_$RecipeSortIniital) then) =
      __$$RecipeSortIniitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeSortIniitalCopyWithImpl<$Res>
    extends _$RecipeSortStateCopyWithImpl<$Res, _$RecipeSortIniital>
    implements _$$RecipeSortIniitalCopyWith<$Res> {
  __$$RecipeSortIniitalCopyWithImpl(
      _$RecipeSortIniital _value, $Res Function(_$RecipeSortIniital) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeSortIniital implements RecipeSortIniital {
  _$RecipeSortIniital();

  @override
  String toString() {
    return 'RecipeSortState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeSortIniital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(SortBy sortType) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(SortBy sortType)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortType)? ready,
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
    required TResult Function(RecipeSortIniital value) initial,
    required TResult Function(RecipeSortLoading value) loading,
    required TResult Function(RecipeSortError value) error,
    required TResult Function(RecipeSortReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeSortIniital value)? initial,
    TResult? Function(RecipeSortLoading value)? loading,
    TResult? Function(RecipeSortError value)? error,
    TResult? Function(RecipeSortReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeSortIniital value)? initial,
    TResult Function(RecipeSortLoading value)? loading,
    TResult Function(RecipeSortError value)? error,
    TResult Function(RecipeSortReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipeSortIniital implements RecipeSortState {
  factory RecipeSortIniital() = _$RecipeSortIniital;
}

/// @nodoc
abstract class _$$RecipeSortLoadingCopyWith<$Res> {
  factory _$$RecipeSortLoadingCopyWith(
          _$RecipeSortLoading value, $Res Function(_$RecipeSortLoading) then) =
      __$$RecipeSortLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeSortLoadingCopyWithImpl<$Res>
    extends _$RecipeSortStateCopyWithImpl<$Res, _$RecipeSortLoading>
    implements _$$RecipeSortLoadingCopyWith<$Res> {
  __$$RecipeSortLoadingCopyWithImpl(
      _$RecipeSortLoading _value, $Res Function(_$RecipeSortLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeSortLoading implements RecipeSortLoading {
  _$RecipeSortLoading();

  @override
  String toString() {
    return 'RecipeSortState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeSortLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(SortBy sortType) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(SortBy sortType)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortType)? ready,
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
    required TResult Function(RecipeSortIniital value) initial,
    required TResult Function(RecipeSortLoading value) loading,
    required TResult Function(RecipeSortError value) error,
    required TResult Function(RecipeSortReady value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeSortIniital value)? initial,
    TResult? Function(RecipeSortLoading value)? loading,
    TResult? Function(RecipeSortError value)? error,
    TResult? Function(RecipeSortReady value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeSortIniital value)? initial,
    TResult Function(RecipeSortLoading value)? loading,
    TResult Function(RecipeSortError value)? error,
    TResult Function(RecipeSortReady value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeSortLoading implements RecipeSortState {
  factory RecipeSortLoading() = _$RecipeSortLoading;
}

/// @nodoc
abstract class _$$RecipeSortErrorCopyWith<$Res> {
  factory _$$RecipeSortErrorCopyWith(
          _$RecipeSortError value, $Res Function(_$RecipeSortError) then) =
      __$$RecipeSortErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeSortErrorCopyWithImpl<$Res>
    extends _$RecipeSortStateCopyWithImpl<$Res, _$RecipeSortError>
    implements _$$RecipeSortErrorCopyWith<$Res> {
  __$$RecipeSortErrorCopyWithImpl(
      _$RecipeSortError _value, $Res Function(_$RecipeSortError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeSortError implements RecipeSortError {
  _$RecipeSortError();

  @override
  String toString() {
    return 'RecipeSortState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeSortError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(SortBy sortType) ready,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(SortBy sortType)? ready,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortType)? ready,
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
    required TResult Function(RecipeSortIniital value) initial,
    required TResult Function(RecipeSortLoading value) loading,
    required TResult Function(RecipeSortError value) error,
    required TResult Function(RecipeSortReady value) ready,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeSortIniital value)? initial,
    TResult? Function(RecipeSortLoading value)? loading,
    TResult? Function(RecipeSortError value)? error,
    TResult? Function(RecipeSortReady value)? ready,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeSortIniital value)? initial,
    TResult Function(RecipeSortLoading value)? loading,
    TResult Function(RecipeSortError value)? error,
    TResult Function(RecipeSortReady value)? ready,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipeSortError implements RecipeSortState {
  factory RecipeSortError() = _$RecipeSortError;
}

/// @nodoc
abstract class _$$RecipeSortReadyCopyWith<$Res> {
  factory _$$RecipeSortReadyCopyWith(
          _$RecipeSortReady value, $Res Function(_$RecipeSortReady) then) =
      __$$RecipeSortReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({SortBy sortType});
}

/// @nodoc
class __$$RecipeSortReadyCopyWithImpl<$Res>
    extends _$RecipeSortStateCopyWithImpl<$Res, _$RecipeSortReady>
    implements _$$RecipeSortReadyCopyWith<$Res> {
  __$$RecipeSortReadyCopyWithImpl(
      _$RecipeSortReady _value, $Res Function(_$RecipeSortReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$RecipeSortReady(
      null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortBy,
    ));
  }
}

/// @nodoc

class _$RecipeSortReady implements RecipeSortReady {
  _$RecipeSortReady(this.sortType);

  @override
  final SortBy sortType;

  @override
  String toString() {
    return 'RecipeSortState.ready(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeSortReady &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeSortReadyCopyWith<_$RecipeSortReady> get copyWith =>
      __$$RecipeSortReadyCopyWithImpl<_$RecipeSortReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(SortBy sortType) ready,
  }) {
    return ready(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(SortBy sortType)? ready,
  }) {
    return ready?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(SortBy sortType)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeSortIniital value) initial,
    required TResult Function(RecipeSortLoading value) loading,
    required TResult Function(RecipeSortError value) error,
    required TResult Function(RecipeSortReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeSortIniital value)? initial,
    TResult? Function(RecipeSortLoading value)? loading,
    TResult? Function(RecipeSortError value)? error,
    TResult? Function(RecipeSortReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeSortIniital value)? initial,
    TResult Function(RecipeSortLoading value)? loading,
    TResult Function(RecipeSortError value)? error,
    TResult Function(RecipeSortReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class RecipeSortReady implements RecipeSortState {
  factory RecipeSortReady(final SortBy sortType) = _$RecipeSortReady;

  SortBy get sortType;
  @JsonKey(ignore: true)
  _$$RecipeSortReadyCopyWith<_$RecipeSortReady> get copyWith =>
      throw _privateConstructorUsedError;
}
