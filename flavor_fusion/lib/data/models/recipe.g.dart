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
      label: fields[0] as String,
      image: fields[1] as String,
      url: fields[2] as String,
      dietLabels: (fields[3] as List).cast<String>(),
      healthLabels: (fields[4] as List).cast<String>(),
      cautions: (fields[5] as List).cast<String>(),
      ingredientLines: (fields[6] as List).cast<String>(),
      ingredients: (fields[7] as List).cast<Ingredient>(),
      calories: fields[8] as double,
      totalWeight: fields[9] as double,
      totalTime: fields[10] as int,
      cuisineType: (fields[11] as List).cast<String>(),
      mealType: (fields[12] as List).cast<String>(),
      dishType: (fields[13] as List).cast<String>(),
      id: fields[14] as int,
      author: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Recipe obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.label)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.dietLabels)
      ..writeByte(4)
      ..write(obj.healthLabels)
      ..writeByte(5)
      ..write(obj.cautions)
      ..writeByte(6)
      ..write(obj.ingredientLines)
      ..writeByte(7)
      ..write(obj.ingredients)
      ..writeByte(8)
      ..write(obj.calories)
      ..writeByte(9)
      ..write(obj.totalWeight)
      ..writeByte(10)
      ..write(obj.totalTime)
      ..writeByte(11)
      ..write(obj.cuisineType)
      ..writeByte(12)
      ..write(obj.mealType)
      ..writeByte(13)
      ..write(obj.dishType)
      ..writeByte(14)
      ..write(obj.id)
      ..writeByte(15)
      ..write(obj.author);
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
      id: json['id'] as int,
      author: json['author'] as String,
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
      'id': instance.id,
      'author': instance.author,
    };
