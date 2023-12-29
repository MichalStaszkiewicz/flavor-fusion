// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_search_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientSearchListResponse _$IngredientSearchListResponseFromJson(
    Map<String, dynamic> json) {
  return _IngredientSearchListResponse.fromJson(json);
}

/// @nodoc
mixin _$IngredientSearchListResponse {
  List<IngredientSearch> get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientSearchListResponseCopyWith<IngredientSearchListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientSearchListResponseCopyWith<$Res> {
  factory $IngredientSearchListResponseCopyWith(
          IngredientSearchListResponse value,
          $Res Function(IngredientSearchListResponse) then) =
      _$IngredientSearchListResponseCopyWithImpl<$Res,
          IngredientSearchListResponse>;
  @useResult
  $Res call({List<IngredientSearch> edges});
}

/// @nodoc
class _$IngredientSearchListResponseCopyWithImpl<$Res,
        $Val extends IngredientSearchListResponse>
    implements $IngredientSearchListResponseCopyWith<$Res> {
  _$IngredientSearchListResponseCopyWithImpl(this._value, this._then);

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
              as List<IngredientSearch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientSearchListResponseImplCopyWith<$Res>
    implements $IngredientSearchListResponseCopyWith<$Res> {
  factory _$$IngredientSearchListResponseImplCopyWith(
          _$IngredientSearchListResponseImpl value,
          $Res Function(_$IngredientSearchListResponseImpl) then) =
      __$$IngredientSearchListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IngredientSearch> edges});
}

/// @nodoc
class __$$IngredientSearchListResponseImplCopyWithImpl<$Res>
    extends _$IngredientSearchListResponseCopyWithImpl<$Res,
        _$IngredientSearchListResponseImpl>
    implements _$$IngredientSearchListResponseImplCopyWith<$Res> {
  __$$IngredientSearchListResponseImplCopyWithImpl(
      _$IngredientSearchListResponseImpl _value,
      $Res Function(_$IngredientSearchListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = null,
  }) {
    return _then(_$IngredientSearchListResponseImpl(
      edges: null == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<IngredientSearch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientSearchListResponseImpl
    implements _IngredientSearchListResponse {
  _$IngredientSearchListResponseImpl(
      {required final List<IngredientSearch> edges})
      : _edges = edges;

  factory _$IngredientSearchListResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$IngredientSearchListResponseImplFromJson(json);

  final List<IngredientSearch> _edges;
  @override
  List<IngredientSearch> get edges {
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_edges);
  }

  @override
  String toString() {
    return 'IngredientSearchListResponse(edges: $edges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientSearchListResponseImpl &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientSearchListResponseImplCopyWith<
          _$IngredientSearchListResponseImpl>
      get copyWith => __$$IngredientSearchListResponseImplCopyWithImpl<
          _$IngredientSearchListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientSearchListResponseImplToJson(
      this,
    );
  }
}

abstract class _IngredientSearchListResponse
    implements IngredientSearchListResponse {
  factory _IngredientSearchListResponse(
          {required final List<IngredientSearch> edges}) =
      _$IngredientSearchListResponseImpl;

  factory _IngredientSearchListResponse.fromJson(Map<String, dynamic> json) =
      _$IngredientSearchListResponseImpl.fromJson;

  @override
  List<IngredientSearch> get edges;
  @override
  @JsonKey(ignore: true)
  _$$IngredientSearchListResponseImplCopyWith<
          _$IngredientSearchListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
