// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientListResponse _$$_IngredientListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_IngredientListResponse(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IngredientListResponseToJson(
        _$_IngredientListResponse instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };
