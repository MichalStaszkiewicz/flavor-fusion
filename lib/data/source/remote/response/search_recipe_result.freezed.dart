// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipe_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRecipeResult _$SearchRecipeResultFromJson(Map<String, dynamic> json) {
  return _SearchRecipeResult.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipeResult {
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'edges')
  List<Recipe> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipeResultCopyWith<SearchRecipeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipeResultCopyWith<$Res> {
  factory $SearchRecipeResultCopyWith(
          SearchRecipeResult value, $Res Function(SearchRecipeResult) then) =
      _$SearchRecipeResultCopyWithImpl<$Res, SearchRecipeResult>;
  @useResult
  $Res call({PageInfo pageInfo, @JsonKey(name: 'edges') List<Recipe> recipes});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$SearchRecipeResultCopyWithImpl<$Res, $Val extends SearchRecipeResult>
    implements $SearchRecipeResultCopyWith<$Res> {
  _$SearchRecipeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageInfo = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchRecipeResultImplCopyWith<$Res>
    implements $SearchRecipeResultCopyWith<$Res> {
  factory _$$SearchRecipeResultImplCopyWith(_$SearchRecipeResultImpl value,
          $Res Function(_$SearchRecipeResultImpl) then) =
      __$$SearchRecipeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageInfo pageInfo, @JsonKey(name: 'edges') List<Recipe> recipes});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$SearchRecipeResultImplCopyWithImpl<$Res>
    extends _$SearchRecipeResultCopyWithImpl<$Res, _$SearchRecipeResultImpl>
    implements _$$SearchRecipeResultImplCopyWith<$Res> {
  __$$SearchRecipeResultImplCopyWithImpl(_$SearchRecipeResultImpl _value,
      $Res Function(_$SearchRecipeResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageInfo = null,
    Object? recipes = null,
  }) {
    return _then(_$SearchRecipeResultImpl(
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRecipeResultImpl implements _SearchRecipeResult {
  _$SearchRecipeResultImpl(
      {required this.pageInfo,
      @JsonKey(name: 'edges') required final List<Recipe> recipes})
      : _recipes = recipes;

  factory _$SearchRecipeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRecipeResultImplFromJson(json);

  @override
  final PageInfo pageInfo;
  final List<Recipe> _recipes;
  @override
  @JsonKey(name: 'edges')
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'SearchRecipeResult(pageInfo: $pageInfo, recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipeResultImpl &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageInfo, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipeResultImplCopyWith<_$SearchRecipeResultImpl> get copyWith =>
      __$$SearchRecipeResultImplCopyWithImpl<_$SearchRecipeResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRecipeResultImplToJson(
      this,
    );
  }
}

abstract class _SearchRecipeResult implements SearchRecipeResult {
  factory _SearchRecipeResult(
          {required final PageInfo pageInfo,
          @JsonKey(name: 'edges') required final List<Recipe> recipes}) =
      _$SearchRecipeResultImpl;

  factory _SearchRecipeResult.fromJson(Map<String, dynamic> json) =
      _$SearchRecipeResultImpl.fromJson;

  @override
  PageInfo get pageInfo;
  @override
  @JsonKey(name: 'edges')
  List<Recipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$SearchRecipeResultImplCopyWith<_$SearchRecipeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
