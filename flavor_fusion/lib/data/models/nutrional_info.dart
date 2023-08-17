import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'nutrional_info.g.dart';
part 'nutrional_info.freezed.dart';

@HiveType(typeId: 6)
@freezed
class NutrionalInfo with _$NutrionalInfo {
  factory NutrionalInfo({
    @HiveField(0) required double protein,
    @HiveField(1) required double carbs,
    @HiveField(2) required double fiber,
    @HiveField(3) required double sugar,
    @HiveField(4) required double fat,
  }) = _NutrionalInfo;
  factory NutrionalInfo.fromJson(Map<String, dynamic> json) =>
      _$NutrionalInfoFromJson(json);
}
