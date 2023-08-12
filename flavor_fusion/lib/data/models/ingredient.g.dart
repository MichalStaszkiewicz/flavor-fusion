// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientAdapter extends TypeAdapter<Ingredient> {
  @override
  final int typeId = 4;

  @override
  Ingredient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ingredient(
      text: fields[0] as String,
      quantity: fields[1] as int,
      measure: fields[2] as String,
      food: fields[3] as String,
      weight: fields[4] as double,
      foodCategory: fields[5] as String,
      foodId: fields[6] as String,
      image: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Ingredient obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.measure)
      ..writeByte(3)
      ..write(obj.food)
      ..writeByte(4)
      ..write(obj.weight)
      ..writeByte(5)
      ..write(obj.foodCategory)
      ..writeByte(6)
      ..write(obj.foodId)
      ..writeByte(7)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
