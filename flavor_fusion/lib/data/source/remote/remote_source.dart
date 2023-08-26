import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/dto/recipe_dto.dart';
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
  Future<Either<List<RecipeDto>, Exception>> getEasyBreakfast() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.easy, MealType.breakfast));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getMediumBreakfast() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.medium, MealType.breakfast));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getHardBreakfast() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.hard, MealType.breakfast));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getExpertBreakfast() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.expert, MealType.breakfast));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getEasyDinner() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.easy, MealType.dinner));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getMediumDinner() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.medium, MealType.dinner));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getHardDinner() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.hard, MealType.dinner));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getExpertDinner() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.expert, MealType.dinner));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getEasyLunch() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.easy, MealType.lunch));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getmediumLunch() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.medium, MealType.lunch));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getHardLunch() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.hard, MealType.lunch));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<List<RecipeDto>, Exception>> getExpertLunch() async {
    try {
      var response = await locator<GraphQLService>().executeQuery(
          RecipeQueries.createRecommendedRecipesQuery(
              SkillLevel.expert, MealType.lunch));

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  @override
  Future<Either<List<RecipeDto>, Exception>> getRecommendedRecipes() async {
    try {
      List<RecipeDto> breakfastEasy = await getEasyBreakfast();

      List<RecipeDto> recipes =
          RecipeListResponse.fromJson(response['recipeSearch']).edges;
      return Left(recipes);
    } on Exception catch (e) {
      return Right(e);
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
  Future<Either<List<RecipeDto>, Exception>> searchRecipes(
      String search, List<String> ingredients) async {
    try {
      final ingredientsQuery =
          ingredients.map((ingredient) => '"$ingredient"').join(',');

      final response = await locator<GraphQLService>().executeQuery("""{
      recipeSearch(   
        query:"$search",ingredients:[$ingredientsQuery],hasInstructions: true
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
            nutritionalInfo{
          protein,
          carbs,
          fiber,
          fat
          carbs
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
        print("Response came in  " + response.toString());
        List<RecipeDto> recipes =
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
