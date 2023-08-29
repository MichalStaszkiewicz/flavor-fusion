import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/ingredient_search.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/remote/graphql_queries.dart';
import 'package:flavor_fusion/data/source/remote/graphql_service.dart';
import 'package:flavor_fusion/data/source/remote/response/ingredient_list_response.dart';
import 'package:flavor_fusion/data/source/remote/response/ingredient_search_list_response.dart';
import 'package:flavor_fusion/data/source/remote/response/recipe_list_response.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../utility/service_locator.dart';
import '../interfaces/remote_source.dart';

class RemoteSource implements IRemoteSource {
  Future<Either<List<Recipe>, Exception>> getMeal(MealType mealType) async {
    try {
      var response = await locator<GraphQLService>()
          .executeQuery(RecipeQueries.createRecommendedRecipesQuery(mealType));

      List<Recipe> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;

      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  @override
  Future<Either<Map<String, List<Recipe>>, Exception>>
      getRecommendedRecipes() async {
    try {
      Either<List<Recipe>, Exception> breakfast =
          await getMeal(MealType.breakfast);
      Either<List<Recipe>, Exception> lunch = await getMeal(MealType.lunch);
      Either<List<Recipe>, Exception> dinner = await getMeal(MealType.dinner);

      List<Either<List<Recipe>, Exception>> eitherList = [
        breakfast,
        lunch,
        dinner,
      ];

      List<Exception> errors = eitherList
          .where((either) => either.isRight())
          .map((either) => either.fold((_) => null, (error) => error))
          .whereType<Exception>()
          .toList();

      if (errors.isNotEmpty) {
        return Right(errors.first);
      }

      Map<String, List<Recipe>> result = {
        "breakfast": breakfast.fold((recipes) => recipes, (_) => []),
        "lunch": lunch.fold((recipes) => recipes, (_) => []),
        "dinner": dinner.fold((recipes) => recipes, (_) => []),
      };

      return Left(result);
    } on Exception catch (e) {
      print(e.toString());
      return Right(e as Exception);
    }
  }

  @override
  Future<Either<List<Ingredient>, Exception>> searchIngredients(
      String search) async {
    try {
      var response = await locator<GraphQLService>().executeQuery("""{
  ingredientSearch(query: "$search") {
    edges {
      node {
        ... on EdamamFoodResult {
          id
          label
          databaseId
          servings {
            amount
            description
            equivalent
            unit
            selected
          }
        }
      }
    }
  }
  }""");
      print(response);
      List<IngredientSearch> ingredients =
          IngredientSearchListResponse.fromJson(response['ingredientSearch'])
              .edges;
      return Left(List<Ingredient>.from(
          ingredients.map((e) => e.toIngredient()).toList()));
    } on Exception catch (e) {
      return Right(e);
    }
  }

  @override
  Future<Either<List<Recipe>, Exception>> searchRecipes(
      String search,
      List<String> ingredients,
      MealType mealType,
      SkillLevel skillLevel) async {
    try {
      final ingredientsQuery =
          ingredients.map((ingredient) => '"$ingredient"').join(',');

      final mealTimeQuery = mealType != MealType.none
          ? 'mealTime: ${mealType.toString().toUpperCase().split('.').last}'
          : '';

      final skillLevelQuery = skillLevel != SkillLevel.none
          ? 'skillLevel: ${skillLevel.toString().toUpperCase().split('.').last}'
          : '';

      final response = await locator<GraphQLService>().executeQuery("""{
    recipeSearch(   
      query: "$search",
      ingredients: [$ingredientsQuery],
      hasInstructions: true,
      $mealTimeQuery,
      $skillLevelQuery
    ) {
      edges {
        node {
          mainImage
          author
          id
          courses
          cuisines
          cleanName
          totalTime
          name
          rating
          serving
          nutrientsPerServing {
            calories
          }
          nutritionalInfo {
            protein
            carbs
            fiber
            fat
            calcium
            sugar
          }
          recipeType
          ingredients {
            name
          }
          mealBalanceIndex {
            score
            errors
            message
          }
          ingredientsCount
          instructions
          name
          ingredientLines
        }
      }
    }
  }""");

      if (response.containsKey('recipeSearch')) {
        print("Response came in " + response.toString());
        List<Recipe> recipes =
            RecipeListResponse.fromJson(response['recipeSearch']).edges;
        return Left(recipes);
      } else {
        throw Exception("No 'recipeSearch' key in the response.");
      }
    } on Exception catch (e) {
      return Right(e);
    }
  }
}
