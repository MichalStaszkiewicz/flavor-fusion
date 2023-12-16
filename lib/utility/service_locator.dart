import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/data/source/local/local_source.dart';
import 'package:flavor_fusion/data/source/remote/graphql_service.dart';
import 'package:flavor_fusion/domain/services/grocery.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/urls.dart';

import 'package:get_it/get_it.dart';

import '../data/models/grocery.dart';
import '../data/models/recipe.dart';
import '../data/source/local/hive_data_provider.dart';
import '../data/source/remote/remote_source.dart';
import '../domain/services/favorite_recipe.dart';

GetIt locator = GetIt.instance;
void initializeServices(String apiToken) {
  
  locator.registerLazySingleton<Global>(() => Global());

  locator.registerLazySingleton<HiveDataProvider<Recipe>>(
      () => HiveDataProvider<Recipe>());

  locator.registerLazySingleton<LocalSource>(() => LocalSource());
  locator.registerLazySingleton<RemoteSource>(() => RemoteSource());
  locator.registerLazySingleton<SourceRepository>(
      () => SourceRepository(locator<LocalSource>(), locator<RemoteSource>()));
  locator.registerLazySingleton<FavoriteRecipeService>(
      () => FavoriteRecipeService(locator<SourceRepository>()));
  locator.registerLazySingleton<SavedGroceryService>(
      () => SavedGroceryService(locator<SourceRepository>()));
  locator.registerLazySingleton<GraphQLService>(
      () => GraphQLService(productionApiEndpoint, apiToken));
}
