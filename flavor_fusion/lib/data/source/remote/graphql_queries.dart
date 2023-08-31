import 'package:flavor_fusion/utility/enums.dart';

class RecipeQueries {
  static String createRecommendedRecipesQuery(
    MealType mealType,
  ) {
    String query = """
{
  recipeSearch(first:10,hasImage: true, hasInstructions: true,mealTime:${mealType.name.toString().toUpperCase()}) {
    edges {
      node {
        mainImage
        author
        id
        totalTime
        courses
        cuisines
        cleanName
        rating
        serving
          nutritionalInfo{
          protein,
          carbs,
          fiber,
          fat
          carbs
          calcium
          sugar
        }
        nutrientsPerServing {
          calories
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
        ingredientLines
        ingredientsCount
        instructions
        name
        ingredientLines
      }
    }
  }
}
""";
    return query;
  }
}
