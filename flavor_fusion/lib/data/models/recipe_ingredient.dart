import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class RecipeIngredient {
  RecipeIngredient(
      {@HiveField(0) required this.name, @HiveField(1) required this.owned});
  String name;
  bool owned;
}
