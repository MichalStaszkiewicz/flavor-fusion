import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/ingredient_search.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/remote/graphql_queries.dart';
import 'package:flavor_fusion/data/source/remote/graphql_service.dart';
import 'package:flavor_fusion/data/source/remote/response/ingredient_list_response.dart';
import 'package:flavor_fusion/data/source/remote/response/ingredient_search_list_response.dart';
import 'package:flavor_fusion/data/source/remote/response/recipe_list_response.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../utility/service_locator.dart';
import '../interfaces/remote_source.dart';

class RemoteSource implements IRemoteSource {
  @override
  Future<Either<List<Recipe>, Exception>> getRecommendedRecipes() async {
    try {
      var response = await locator<GraphQLService>()
          .executeQuery(RecipeQueries.breakFastRecipeQuery);

      List<Recipe> recipes =
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
  Future<Either<List<Recipe>, Exception>> searchRecipes(
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
