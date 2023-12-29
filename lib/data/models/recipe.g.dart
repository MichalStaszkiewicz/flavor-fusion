// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeAdapter extends TypeAdapter<Recipe> {
  @override
  final int typeId = 1;

  @override
  Recipe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recipe(
      author: fields[0] as String?,
      id: fields[1] as String,
      courses: (fields[2] as List?)?.cast<String>(),
      cuisines: (fields[3] as List?)?.cast<String>(),
      cleanName: fields[4] as String?,
      totalTime: fields[5] as String?,
      name: fields[6] as String,
      rating: fields[7] as int?,
      serving: fields[8] as int?,
      nutrientsPerServing: fields[9] as NutrientsPerServing,
      recipeType: fields[10] as String,
      ingredients: (fields[11] as List).cast<Ingredient>(),
      ingredientLines: (fields[12] as List).cast<String>(),
      ingredientsCount: fields[13] as int,
      instructions: (fields[14] as List).cast<String>(),
      nutritionalInfo: fields[15] as NutrionalInfo,
      mainImage: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Recipe obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.author)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.courses)
      ..writeByte(3)
      ..write(obj.cuisines)
      ..writeByte(4)
      ..write(obj.cleanName)
      ..writeByte(5)
      ..write(obj.totalTime)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.rating)
      ..writeByte(8)
      ..write(obj.serving)
      ..writeByte(9)
      ..write(obj.nutrientsPerServing)
      ..writeByte(10)
      ..write(obj.recipeType)
      ..writeByte(11)
      ..write(obj.ingredients)
      ..writeByte(12)
      ..write(obj.ingredientLines)
      ..writeByte(13)
      ..write(obj.ingredientsCount)
      ..writeByte(14)
      ..write(obj.instructions)
      ..writeByte(15)
      ..write(obj.nutritionalInfo)
      ..writeByte(16)
      ..write(obj.mainImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      author: json['author'] as String?,
      id: json['id'] as String,
      courses:
          (json['courses'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cuisines: (json['cuisines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cleanName: json['cleanName'] as String?,
      totalTime: json['totalTime'] as String?,
      name: json['name'] as String,
      rating: json['rating'] as int?,
      serving: json['serving'] as int?,
      nutrientsPerServing: NutrientsPerServing.fromJson(
          json['nutrientsPerServing'] as Map<String, dynamic>),
      recipeType: json['recipeType'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredientLines: (json['ingredientLines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ingredientsCount: json['ingredientsCount'] as int,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      nutritionalInfo: NutrionalInfo.fromJson(
          json['nutritionalInfo'] as Map<String, dynamic>),
      mainImage: json['mainImage'] as String,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'id': instance.id,
      'courses': instance.courses,
      'cuisines': instance.cuisines,
      'cleanName': instance.cleanName,
      'totalTime': instance.totalTime,
      'name': instance.name,
      'rating': instance.rating,
      'serving': instance.serving,
      'nutrientsPerServing': instance.nutrientsPerServing,
      'recipeType': instance.recipeType,
      'ingredients': instance.ingredients,
      'ingredientLines': instance.ingredientLines,
      'ingredientsCount': instance.ingredientsCount,
      'instructions': instance.instructions,
      'nutritionalInfo': instance.nutritionalInfo,
      'mainImage': instance.mainImage,
    };
