import 'package:flavor_fusion/data/models/recipe.dart';

import '../../utility/enums.dart';

class Suggestion {
  Suggestion({required this.name, required this.type, required this.recipe});
  SuggestionType type;
  String name;
  Recipe? recipe;
}
