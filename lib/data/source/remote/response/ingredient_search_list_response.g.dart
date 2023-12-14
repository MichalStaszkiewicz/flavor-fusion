// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_search_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientSearchListResponseImpl _$$IngredientSearchListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientSearchListResponseImpl(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => IngredientSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IngredientSearchListResponseImplToJson(
        _$IngredientSearchListResponseImpl instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };
