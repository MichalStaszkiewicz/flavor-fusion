// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchBarModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool recipeSearchBarExpanded) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool recipeSearchBarExpanded)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool recipeSearchBarExpanded)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarModelInitial value) initial,
    required TResult Function(SearchBarModelReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarModelInitial value)? initial,
    TResult? Function(SearchBarModelReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarModelInitial value)? initial,
    TResult Function(SearchBarModelReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBarModelStateCopyWith<$Res> {
  factory $SearchBarModelStateCopyWith(
          SearchBarModelState value, $Res Function(SearchBarModelState) then) =
      _$SearchBarModelStateCopyWithImpl<$Res, SearchBarModelState>;
}

/// @nodoc
class _$SearchBarModelStateCopyWithImpl<$Res, $Val extends SearchBarModelState>
    implements $SearchBarModelStateCopyWith<$Res> {
  _$SearchBarModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchBarModelInitialImplCopyWith<$Res> {
  factory _$$SearchBarModelInitialImplCopyWith(
          _$SearchBarModelInitialImpl value,
          $Res Function(_$SearchBarModelInitialImpl) then) =
      __$$SearchBarModelInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBarModelInitialImplCopyWithImpl<$Res>
    extends _$SearchBarModelStateCopyWithImpl<$Res, _$SearchBarModelInitialImpl>
    implements _$$SearchBarModelInitialImplCopyWith<$Res> {
  __$$SearchBarModelInitialImplCopyWithImpl(_$SearchBarModelInitialImpl _value,
      $Res Function(_$SearchBarModelInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBarModelInitialImpl implements SearchBarModelInitial {
  _$SearchBarModelInitialImpl();

  @override
  String toString() {
    return 'SearchBarModelState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarModelInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool recipeSearchBarExpanded) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool recipeSearchBarExpanded)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool recipeSearchBarExpanded)? ready,
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
    required TResult Function(SearchBarModelInitial value) initial,
    required TResult Function(SearchBarModelReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarModelInitial value)? initial,
    TResult? Function(SearchBarModelReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarModelInitial value)? initial,
    TResult Function(SearchBarModelReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchBarModelInitial implements SearchBarModelState {
  factory SearchBarModelInitial() = _$SearchBarModelInitialImpl;
}

/// @nodoc
abstract class _$$SearchBarModelReadyImplCopyWith<$Res> {
  factory _$$SearchBarModelReadyImplCopyWith(_$SearchBarModelReadyImpl value,
          $Res Function(_$SearchBarModelReadyImpl) then) =
      __$$SearchBarModelReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool recipeSearchBarExpanded});
}

/// @nodoc
class __$$SearchBarModelReadyImplCopyWithImpl<$Res>
    extends _$SearchBarModelStateCopyWithImpl<$Res, _$SearchBarModelReadyImpl>
    implements _$$SearchBarModelReadyImplCopyWith<$Res> {
  __$$SearchBarModelReadyImplCopyWithImpl(_$SearchBarModelReadyImpl _value,
      $Res Function(_$SearchBarModelReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeSearchBarExpanded = null,
  }) {
    return _then(_$SearchBarModelReadyImpl(
      null == recipeSearchBarExpanded
          ? _value.recipeSearchBarExpanded
          : recipeSearchBarExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchBarModelReadyImpl implements SearchBarModelReady {
  _$SearchBarModelReadyImpl(this.recipeSearchBarExpanded);

  @override
  final bool recipeSearchBarExpanded;

  @override
  String toString() {
    return 'SearchBarModelState.ready(recipeSearchBarExpanded: $recipeSearchBarExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarModelReadyImpl &&
            (identical(
                    other.recipeSearchBarExpanded, recipeSearchBarExpanded) ||
                other.recipeSearchBarExpanded == recipeSearchBarExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeSearchBarExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarModelReadyImplCopyWith<_$SearchBarModelReadyImpl> get copyWith =>
      __$$SearchBarModelReadyImplCopyWithImpl<_$SearchBarModelReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool recipeSearchBarExpanded) ready,
  }) {
    return ready(recipeSearchBarExpanded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool recipeSearchBarExpanded)? ready,
  }) {
    return ready?.call(recipeSearchBarExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool recipeSearchBarExpanded)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(recipeSearchBarExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarModelInitial value) initial,
    required TResult Function(SearchBarModelReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarModelInitial value)? initial,
    TResult? Function(SearchBarModelReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarModelInitial value)? initial,
    TResult Function(SearchBarModelReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class SearchBarModelReady implements SearchBarModelState {
  factory SearchBarModelReady(final bool recipeSearchBarExpanded) =
      _$SearchBarModelReadyImpl;

  bool get recipeSearchBarExpanded;
  @JsonKey(ignore: true)
  _$$SearchBarModelReadyImplCopyWith<_$SearchBarModelReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
