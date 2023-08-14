// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_search_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientSearchListResponse _$$_IngredientSearchListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_IngredientSearchListResponse(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => IngredientSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IngredientSearchListResponseToJson(
        _$_IngredientSearchListResponse instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };
