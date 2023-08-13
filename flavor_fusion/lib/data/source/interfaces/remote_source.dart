import 'package:dartz/dartz.dart';
import 'package:flavor_fusion/data/models/recipe.dart';

abstract class IRemoteSource {
  Future<Either<List<Recipe>, Exception>> getRecommendedRecipes();
}
