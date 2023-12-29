// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientListResponseImpl _$$IngredientListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientListResponseImpl(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IngredientListResponseImplToJson(
        _$IngredientListResponseImpl instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };
