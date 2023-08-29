import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/utility/enums.dart';

import '../../models/ingredient.dart';

abstract class IRemoteSource {
  Future<Either<Map<String, List<Recipe>>, Exception>> getRecommendedRecipes();
  Future<Either<List<Ingredient>, Exception>> searchIngredients(String search);
  Future<Either<List<Recipe>, Exception>> searchRecipes(String search,
      List<String> ingredients, MealType mealType, SkillLevel skillLevel);
}
