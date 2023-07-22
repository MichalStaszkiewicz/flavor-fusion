import 'package:flavor_fusion/presentation/view_models/recipe_filter/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var recipeFilterViewModel =
    StateNotifierProvider<RecipeFilterViewModel, RecipeFilterState>(
        (ref) => RecipeFilterViewModel(RecipeFilterState.initial()));

class RecipeFilterViewModel extends StateNotifier<RecipeFilterState> {
  RecipeFilterViewModel(super._state);
  List<String> activeFilters = [];
  void init() {
    state = RecipeFilterState.ready(activeFilters);
  }

  void addFilter(String filter) {
    activeFilters.add(filter);
    state = RecipeFilterState.ready(activeFilters);
  }

  void removeFilter(String filter) {
    activeFilters.remove(filter);
    state = RecipeFilterState.ready(activeFilters);
  }
}
