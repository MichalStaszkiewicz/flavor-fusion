import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/remote/graphql_queries.dart';
import 'package:flavor_fusion/data/source/remote/graphql_service.dart';
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
}
