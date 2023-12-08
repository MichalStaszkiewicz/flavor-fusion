// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeListResponse _$$_RecipeListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeListResponse(
      endCursor: json['endCursor'] as String?,
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeListResponseToJson(
        _$_RecipeListResponse instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'edges': instance.edges,
    };
