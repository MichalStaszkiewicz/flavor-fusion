// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientSearch _$IngredientSearchFromJson(Map<String, dynamic> json) {
  return _IngredientSearch.fromJson(json);
}

/// @nodoc
mixin _$IngredientSearch {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientSearchCopyWith<IngredientSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientSearchCopyWith<$Res> {
  factory $IngredientSearchCopyWith(
          IngredientSearch value, $Res Function(IngredientSearch) then) =
      _$IngredientSearchCopyWithImpl<$Res, IngredientSearch>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$IngredientSearchCopyWithImpl<$Res, $Val extends IngredientSearch>
    implements $IngredientSearchCopyWith<$Res> {
  _$IngredientSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientSearchCopyWith<$Res>
    implements $IngredientSearchCopyWith<$Res> {
  factory _$$_IngredientSearchCopyWith(
          _$_IngredientSearch value, $Res Function(_$_IngredientSearch) then) =
      __$$_IngredientSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$_IngredientSearchCopyWithImpl<$Res>
    extends _$IngredientSearchCopyWithImpl<$Res, _$_IngredientSearch>
    implements _$$_IngredientSearchCopyWith<$Res> {
  __$$_IngredientSearchCopyWithImpl(
      _$_IngredientSearch _value, $Res Function(_$_IngredientSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$_IngredientSearch(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientSearch implements _IngredientSearch {
  _$_IngredientSearch({required this.label});

  factory _$_IngredientSearch.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientSearchFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'IngredientSearch(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientSearch &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientSearchCopyWith<_$_IngredientSearch> get copyWith =>
      __$$_IngredientSearchCopyWithImpl<_$_IngredientSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientSearchToJson(
      this,
    );
  }

  @override
  Ingredient toIngredient() {
    return Ingredient(name: label);
  }
}

abstract class _IngredientSearch implements IngredientSearch {
  factory _IngredientSearch({required final String label}) =
      _$_IngredientSearch;

  factory _IngredientSearch.fromJson(Map<String, dynamic> json) =
      _$_IngredientSearch.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientSearchCopyWith<_$_IngredientSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
