import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class Global {
  Color greyText = Color.fromARGB(255, 68, 68, 68);
  void manageAppBarVisibility(WidgetRef ref, int tabIndex, String currentPath) {
    if (tabIndex == 0) {
      if (currentPath.contains(RouteName.recipeDetailsPath)) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(searchBarModel.notifier).toggleAppBar(false, true);
        });
      } else {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(searchBarModel.notifier).toggleAppBar(true, true);
        });
      }
    }
    if (tabIndex == 1) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ref.read(searchBarModel.notifier).toggleAppBar(true, true);
      });
    }
    if (tabIndex == 2) {
      if (currentPath.contains(RouteName.recipeDetailsPath)) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(searchBarModel.notifier).toggleAppBar(false, true);
        });
      } else {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(searchBarModel.notifier).toggleAppBar(true, true);
        });
      }
    }
    print("Current Tab Path : " + currentPath);
  }

  bool shouldRenderAppBar(BuildContext context) {
    final router = context.router;
    final routes = router.routeCollection.routes;

    if (routes.last.name == "DishDetailsRoute") {
      return false;
    }

    return true;
  }

  Map<String, String> mapMeasurement = {
    "Milliliter": "ml",
    "Milliliters": "ml",
    "Deciliter": "dl",
    "Deciliters": "dl",
    "Liter": "l",
    "Liters": "l",
    "Teaspoon": "tsp",
    "Teacup": "tcp",
    "Teacups": "tcp",
    "Tablespoon": "tsp",
    "Saltspoon": "ssp",
    "Dessertspoon": "dstspn",
    "Fluid Ounce": "fl oz",
    "Fluid Ounces": "fl oz",
    "Cup": "c",
    "Cups": "c",
    "Pint": "pt",
    "Quart": "qt",
    "Gallon": "gal",
    "Drop": "dr",
    "Pinch": "pn",
    "Dash": "ds",
    "Package": "pck",
  };
  List<String> measurementList = [
    "Milliliter",
    "Milliliters",
    "Deciliter",
    "Deciliters",
    "Liter",
    "Liters",
    "Teaspoon",
    "Teacup",
    "Teacups",
    "Tablespoon",
    "Saltspoon",
    "Dessertspoon",
    "Fluid Ounce",
    "Fluid Ounces",
    "Cup",
    "Cups",
    "Pint",
    "Quart",
    "Gallon",
    "Drop",
    "Pinch",
    "Dash",
    "Package",
  ];

  List<DishType> dishTypes = [
    DishType.bread,
    DishType.cereals,
    DishType.cookies,
    DishType.desserts,
    DishType.drinks,
    DishType.pancake,
    DishType.preps,
    DishType.preserve,
    DishType.salad,
    DishType.sandwitches,
    DishType.sauces,
    DishType.soup,
    DishType.sweets
  ];
  List<MealType> mealTypes = [
    MealType.breakfast,
    MealType.dinner,
    MealType.lunch,
    MealType.snack,
  ];

  Map<String, String> ingredientLineToMeasurement(String ingredientLine) {
    String count = '';
    String measurement = '';
    bool countChecked = false;
    bool measurementChecked = false;
    for (int i = 0; i < ingredientLine.length; i++) {
      if (!countChecked && ingredientLine[i] != ' ') {
        count += ingredientLine[i].toString();
      }
      if (!measurementChecked && countChecked && ingredientLine[i] != ' ') {
        measurement += ingredientLine[i].toString();
      }
      if (ingredientLine[i] == ' ') {
        if (!countChecked) {
          countChecked = true;
        } else {
          measurementChecked = true;
        }
        if (countChecked && measurementChecked) {
          break;
        }
      }

      if (measurementChecked) {
        break;
      }
    }

    bool exists = false;
    mapMeasurement.forEach((key, value) {
      if (key.toLowerCase() == measurement.toLowerCase() ||
          value.toLowerCase() == measurement.toLowerCase()) {
        exists = true;
      }
    });
    if (exists) {
      return {measurement: count};
    } else {
      return {'': count};
    }
  }

  String capitalize(String text) {
    if (text.isEmpty) {
      return '';
    }

    return text[0].toUpperCase() + text.substring(1);
  }

  List<TextSpan> boldSuggestion(
      String suggestion, String subStr, BuildContext context) {
    int start = suggestion.toLowerCase().indexOf(subStr.toLowerCase());
    int end = start + subStr.length;

    if (start == -1) {
      return [TextSpan(text: capitalize(suggestion))];
    } else {
      String beforeMatch = suggestion.substring(0, start);
      String match = suggestion.substring(start, end);
      String afterMatch = suggestion.substring(end);

      return [
        TextSpan(
            text: capitalize(beforeMatch),
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                letterSpacing: 0.2,
                fontSize: 15,
                color: const Color.fromRGBO(53, 57, 53, 1))),
        TextSpan(
            text: capitalize(match),
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                fontSize: 15,
                color: Colors.blueAccent)),
        TextSpan(
            text: afterMatch,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                letterSpacing: 0.2,
                fontSize: 15,
                color: const Color.fromRGBO(53, 57, 53, 1))),
      ];
    }
  }

  int minutesFromTotalTime(String totalTime) {
    String minutesInString = '';

    for (int i = 0; i < totalTime.length; i++) {
      if (totalTime[i] == ' ') {
        break;
      }
      minutesInString += totalTime[i];
    }

    return int.parse(minutesInString);
  }
}
