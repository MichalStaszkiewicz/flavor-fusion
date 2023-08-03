import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';

class Global {
  late MediaQueryData mediaQuery;

  late Size deviceDimenstions = mediaQuery.size;
  Color greyText = Color.fromARGB(255, 68, 68, 68);
  List<SortBy> sortBy = [
    SortBy.alphabetical,
    SortBy.caloriesAsc,
    SortBy.caloriesDesc,
    SortBy.time,
    SortBy.none
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
    MealType.teatime,
  ];
  List<Diet> diets = [
    Diet.balanced,
    Diet.highFiber,
    Diet.hightProtein,
    Diet.lowCarb,
    Diet.lowFat,
    Diet.lowSodium
  ];
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
      return [TextSpan(text: suggestion)];
    } else {
      String beforeMatch = suggestion.substring(0, start);
      String match = suggestion.substring(start, end);
      String afterMatch = suggestion.substring(end);

      return [
        TextSpan(
            text: beforeMatch,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                letterSpacing: 0.2,
                fontSize: 15,
                color: const Color.fromRGBO(53, 57, 53, 1))),
        TextSpan(
            text: match,
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

  SortBy stringToSortBy(String text) {
    return sortBy.firstWhere(
        (element) => element.name.toLowerCase() == text.toLowerCase());
  }
}
