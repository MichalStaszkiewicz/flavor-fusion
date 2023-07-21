// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      text: json['text'] as String,
      quantity: json['quantity'] as int,
      measure: json['measure'] as String,
      food: json['food'] as String,
      weight: (json['weight'] as num).toDouble(),
      foodCategory: json['foodCategory'] as String,
      foodId: json['foodId'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'text': instance.text,
      'quantity': instance.quantity,
      'measure': instance.measure,
      'food': instance.food,
      'weight': instance.weight,
      'foodCategory': instance.foodCategory,
      'foodId': instance.foodId,
      'image': instance.image,
    };
