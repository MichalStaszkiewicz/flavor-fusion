import 'package:flavor_fusion/app.dart';
import 'package:flavor_fusion/data/models/ingredient.dart';
import 'package:flavor_fusion/data/models/nutriens_per_serving.dart';
import 'package:flavor_fusion/data/models/nutrional_info.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async {
    String apiToken = dotenv.get("API_TOKEN");
    initializeServices(apiToken);
    Hive.registerAdapter(IngredientAdapter());
    Hive.registerAdapter(NutrientsPerServingAdapter());
    Hive.registerAdapter(NutrionalInfoAdapter());
    Hive.registerAdapter(RecipeAdapter());
    locator<HiveDataProvider<Recipe>>().initHive();
    runApp(ProviderScope(child: App()));
  });
}
