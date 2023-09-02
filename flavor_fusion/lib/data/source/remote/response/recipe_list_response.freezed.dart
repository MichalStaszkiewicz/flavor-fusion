// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeListResponse _$RecipeListResponseFromJson(Map<String, dynamic> json) {
  return _RecipeListResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeListResponse {
  String get endCursor => throw _privateConstructorUsedError;
  List<Recipe> get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeListResponseCopyWith<RecipeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListResponseCopyWith<$Res> {
  factory $RecipeListResponseCopyWith(
          RecipeListResponse value, $Res Function(RecipeListResponse) then) =
      _$RecipeListResponseCopyWithImpl<$Res, RecipeListResponse>;
  @useResult
  $Res call({String endCursor, List<Recipe> edges});
}

/// @nodoc
class _$RecipeListResponseCopyWithImpl<$Res, $Val extends RecipeListResponse>
    implements $RecipeListResponseCopyWith<$Res> {
  _$RecipeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endCursor = null,
    Object? edges = null,
  }) {
    return _then(_value.copyWith(
      endCursor: null == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String,
      edges: null == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeListResponseCopyWith<$Res>
    implements $RecipeListResponseCopyWith<$Res> {
  factory _$$_RecipeListResponseCopyWith(_$_RecipeListResponse value,
          $Res Function(_$_RecipeListResponse) then) =
      __$$_RecipeListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String endCursor, List<Recipe> edges});
}

/// @nodoc
class __$$_RecipeListResponseCopyWithImpl<$Res>
    extends _$RecipeListResponseCopyWithImpl<$Res, _$_RecipeListResponse>
    implements _$$_RecipeListResponseCopyWith<$Res> {
  __$$_RecipeListResponseCopyWithImpl(
      _$_RecipeListResponse _value, $Res Function(_$_RecipeListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endCursor = null,
    Object? edges = null,
  }) {
    return _then(_$_RecipeListResponse(
      endCursor: null == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String,
      edges: null == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeListResponse implements _RecipeListResponse {
  _$_RecipeListResponse(
      {required this.endCursor, required final List<Recipe> edges})
      : _edges = edges;

  factory _$_RecipeListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeListResponseFromJson(json);

  @override
  final String endCursor;
  final List<Recipe> _edges;
  @override
  List<Recipe> get edges {
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_edges);
  }

  @override
  String toString() {
    return 'RecipeListResponse(endCursor: $endCursor, edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeListResponse &&
            (identical(other.endCursor, endCursor) ||
                other.endCursor == endCursor) &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, endCursor, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeListResponseCopyWith<_$_RecipeListResponse> get copyWith =>
      __$$_RecipeListResponseCopyWithImpl<_$_RecipeListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeListResponseToJson(
      this,
    );
  }
}

abstract class _RecipeListResponse implements RecipeListResponse {
  factory _RecipeListResponse(
      {required final String endCursor,
      required final List<Recipe> edges}) = _$_RecipeListResponse;

  factory _RecipeListResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeListResponse.fromJson;

  @override
  String get endCursor;
  @override
  List<Recipe> get edges;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeListResponseCopyWith<_$_RecipeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
