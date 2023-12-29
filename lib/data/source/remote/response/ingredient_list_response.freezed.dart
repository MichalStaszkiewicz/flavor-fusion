// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientListResponse _$IngredientListResponseFromJson(
    Map<String, dynamic> json) {
  return _IngredientListResponse.fromJson(json);
}

/// @nodoc
mixin _$IngredientListResponse {
  List<Ingredient> get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientListResponseCopyWith<IngredientListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientListResponseCopyWith<$Res> {
  factory $IngredientListResponseCopyWith(IngredientListResponse value,
          $Res Function(IngredientListResponse) then) =
      _$IngredientListResponseCopyWithImpl<$Res, IngredientListResponse>;
  @useResult
  $Res call({List<Ingredient> edges});
}

/// @nodoc
class _$IngredientListResponseCopyWithImpl<$Res,
        $Val extends IngredientListResponse>
    implements $IngredientListResponseCopyWith<$Res> {
  _$IngredientListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = null,
  }) {
    return _then(_value.copyWith(
      edges: null == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientListResponseImplCopyWith<$Res>
    implements $IngredientListResponseCopyWith<$Res> {
  factory _$$IngredientListResponseImplCopyWith(
          _$IngredientListResponseImpl value,
          $Res Function(_$IngredientListResponseImpl) then) =
      __$$IngredientListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredient> edges});
}

/// @nodoc
class __$$IngredientListResponseImplCopyWithImpl<$Res>
    extends _$IngredientListResponseCopyWithImpl<$Res,
        _$IngredientListResponseImpl>
    implements _$$IngredientListResponseImplCopyWith<$Res> {
  __$$IngredientListResponseImplCopyWithImpl(
      _$IngredientListResponseImpl _value,
      $Res Function(_$IngredientListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = null,
  }) {
    return _then(_$IngredientListResponseImpl(
      edges: null == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientListResponseImpl implements _IngredientListResponse {
  _$IngredientListResponseImpl({required final List<Ingredient> edges})
      : _edges = edges;

  factory _$IngredientListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientListResponseImplFromJson(json);

  final List<Ingredient> _edges;
  @override
  List<Ingredient> get edges {
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_edges);
  }

  @override
  String toString() {
    return 'IngredientListResponse(edges: $edges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientListResponseImpl &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientListResponseImplCopyWith<_$IngredientListResponseImpl>
      get copyWith => __$$IngredientListResponseImplCopyWithImpl<
          _$IngredientListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientListResponseImplToJson(
      this,
    );
  }
}

abstract class _IngredientListResponse implements IngredientListResponse {
  factory _IngredientListResponse({required final List<Ingredient> edges}) =
      _$IngredientListResponseImpl;

  factory _IngredientListResponse.fromJson(Map<String, dynamic> json) =
      _$IngredientListResponseImpl.fromJson;

  @override
  List<Ingredient> get edges;
  @override
  @JsonKey(ignore: true)
  _$$IngredientListResponseImplCopyWith<_$IngredientListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
