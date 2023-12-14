// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrional_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutrionalInfoAdapter extends TypeAdapter<NutrionalInfo> {
  @override
  final int typeId = 6;

  @override
  NutrionalInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutrionalInfo(
      protein: fields[0] as double,
      carbs: fields[1] as double,
      fiber: fields[2] as double,
      sugar: fields[3] as double,
      fat: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, NutrionalInfo obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.protein)
      ..writeByte(1)
      ..write(obj.carbs)
      ..writeByte(2)
      ..write(obj.fiber)
      ..writeByte(3)
      ..write(obj.sugar)
      ..writeByte(4)
      ..write(obj.fat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutrionalInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutrionalInfoImpl _$$NutrionalInfoImplFromJson(Map<String, dynamic> json) =>
    _$NutrionalInfoImpl(
      protein: (json['protein'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      fiber: (json['fiber'] as num).toDouble(),
      sugar: (json['sugar'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
    );

Map<String, dynamic> _$$NutrionalInfoImplToJson(_$NutrionalInfoImpl instance) =>
    <String, dynamic>{
      'protein': instance.protein,
      'carbs': instance.carbs,
      'fiber': instance.fiber,
      'sugar': instance.sugar,
      'fat': instance.fat,
    };
