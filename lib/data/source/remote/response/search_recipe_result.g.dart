// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_recipe_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRecipeResultImpl _$$SearchRecipeResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRecipeResultImpl(
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      recipes: (json['edges'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchRecipeResultImplToJson(
        _$SearchRecipeResultImpl instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo,
      'edges': instance.recipes,
    };
