// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      label: json['label'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      dietLabels: (json['dietLabels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      healthLabels: (json['healthLabels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      cautions:
          (json['cautions'] as List<dynamic>).map((e) => e as String).toList(),
      ingredientLines: (json['ingredientLines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      calories: (json['calories'] as num).toDouble(),
      totalWeight: (json['totalWeight'] as num).toDouble(),
      totalTime: json['totalTime'] as int,
      cuisineType: (json['cuisineType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mealType:
          (json['mealType'] as List<dynamic>).map((e) => e as String).toList(),
      dishType:
          (json['dishType'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'label': instance.label,
      'image': instance.image,
      'url': instance.url,
      'dietLabels': instance.dietLabels,
      'healthLabels': instance.healthLabels,
      'cautions': instance.cautions,
      'ingredientLines': instance.ingredientLines,
      'ingredients': instance.ingredients,
      'calories': instance.calories,
      'totalWeight': instance.totalWeight,
      'totalTime': instance.totalTime,
      'cuisineType': instance.cuisineType,
      'mealType': instance.mealType,
      'dishType': instance.dishType,
    };
