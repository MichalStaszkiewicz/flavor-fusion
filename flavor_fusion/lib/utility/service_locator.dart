import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/data/source/local/local_source.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:get_it/get_it.dart';

import '../data/models/recipe.dart';
import '../data/source/local/hive_data_provider.dart';
import '../domain/services/favorite_recipe.dart';

GetIt locator = GetIt.instance;
void initializeServices() {
  locator.registerLazySingleton<AppRouter>(() => AppRouter());
  locator.registerLazySingleton<Global>(() => Global());

  locator.registerLazySingleton<HiveDataProvider<Recipe>>(
      () => HiveDataProvider<Recipe>());
  locator.registerLazySingleton<LocalSource>(() => LocalSource());
  locator.registerLazySingleton<SourceRepository>(() => SourceRepository());
  locator.registerLazySingleton<FavoriteRecipeService>(
      () => FavoriteRecipeService(locator<SourceRepository>()));
}
