// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeListResponseImpl _$$RecipeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeListResponseImpl(
      endCursor: json['endCursor'] as String?,
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipeListResponseImplToJson(
        _$RecipeListResponseImpl instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'edges': instance.edges,
    };
