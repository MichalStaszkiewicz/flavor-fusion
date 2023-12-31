import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/remote/response/search_recipe_result.dart';
import 'package:flavor_fusion/utility/enums.dart';

import '../../models/ingredient.dart';

abstract class IRemoteSource {
  Future<Either<Map<String, List<Recipe>>, Exception>> getRecommendedRecipes();
  Future<Either<List<Ingredient>, Exception>> searchIngredients(String search);
  Future<Either<SearchRecipeResult, Exception>> searchRecipes(
      String search,
      List<String> ingredients,
      MealType mealType,
      SkillLevel skillLevel,
      String? endCursor);
}
