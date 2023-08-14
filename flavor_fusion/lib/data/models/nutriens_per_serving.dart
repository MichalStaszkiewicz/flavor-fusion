import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'nutriens_per_serving.g.dart';
part 'nutriens_per_serving.freezed.dart';

@HiveType(
  typeId: 4,
)
@freezed
class NutrientsPerServing with _$NutrientsPerServing {
  factory NutrientsPerServing(
      {@HiveField(0) required double? sugar,
      @HiveField(1) required double? carbs,
      @HiveField(2) required double? fat,
      @HiveField(3) required double? fiber,
      @HiveField(4) required double? sodium,
      @HiveField(5) required double? magnesium,
      @HiveField(6) required double calories}) = _NutriensPerServing;

  factory NutrientsPerServing.fromJson(Map<String, dynamic> json) =>
      _$NutrientsPerServingFromJson(json);
}
