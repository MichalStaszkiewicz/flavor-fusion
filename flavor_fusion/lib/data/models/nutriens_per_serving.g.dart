// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutriens_per_serving.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutrientsPerServingAdapter extends TypeAdapter<NutrientsPerServing> {
  @override
  final int typeId = 5;

  @override
  NutrientsPerServing read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutrientsPerServing(
      sugar: fields[0] as double?,
      carbs: fields[1] as double?,
      fat: fields[2] as double?,
      fiber: fields[3] as double?,
      sodium: fields[4] as double?,
      magnesium: fields[5] as double?,
      calories: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, NutrientsPerServing obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.sugar)
      ..writeByte(1)
      ..write(obj.carbs)
      ..writeByte(2)
      ..write(obj.fat)
      ..writeByte(3)
      ..write(obj.fiber)
      ..writeByte(4)
      ..write(obj.sodium)
      ..writeByte(5)
      ..write(obj.magnesium)
      ..writeByte(6)
      ..write(obj.calories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutrientsPerServingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutriensPerServing _$$_NutriensPerServingFromJson(
        Map<String, dynamic> json) =>
    _$_NutriensPerServing(
      sugar: (json['sugar'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      fiber: (json['fiber'] as num?)?.toDouble(),
      sodium: (json['sodium'] as num?)?.toDouble(),
      magnesium: (json['magnesium'] as num?)?.toDouble(),
      calories: (json['calories'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NutriensPerServingToJson(
        _$_NutriensPerServing instance) =>
    <String, dynamic>{
      'sugar': instance.sugar,
      'carbs': instance.carbs,
      'fat': instance.fat,
      'fiber': instance.fiber,
      'sodium': instance.sodium,
      'magnesium': instance.magnesium,
      'calories': instance.calories,
    };
