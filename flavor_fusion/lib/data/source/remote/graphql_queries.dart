class RecipeQueries {
  static const String snackRecipeQuery = """
{
  recipeSearch(hasImage: true, hasInstructions: true, mealTime: SNACK) {
    edges {
      node {
        mainImage
        author
        id
        courses
        cuisines
        cleanName
        rating
        serving
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

  static const String breakFastRecipeQuery = """
{
  recipeSearch(hasImage: true, hasInstructions: true, mealTime: BREAKFAST) {
    edges {
      node { mainImage
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
  static const String dinnerRecipeQuery = """
{
  recipeSearch(hasImage: true, hasInstructions: true, mealTime: DINNER) {
    edges { 
      node {mainImage
        author
        id
        courses
        cuisines
        cleanName
        rating
        serving
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
  static const String dessertRecipeQuery = """
{
  recipeSearch(hasImage: true, hasInstructions: true, mealTime: TREAT_DESSERT) {
    edges {
      node {
        author
        id
        courses
        cuisines
        cleanName
        rating
        serving
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
}
