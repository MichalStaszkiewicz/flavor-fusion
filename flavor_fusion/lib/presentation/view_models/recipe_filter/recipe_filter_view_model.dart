import 'package:flavor_fusion/presentation/view_models/recipe_filter/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';

var recipeFilterViewModel =
    StateNotifierProvider<RecipeFilterViewModel, RecipeFilterState>(
        (ref) => RecipeFilterViewModel(RecipeFilterState.initial()));

class RecipeFilterViewModel extends StateNotifier<RecipeFilterState> {
  RecipeFilterViewModel(super._state);
  final List<String> _activeFilters = [];
  final List<String> _oldActiveFilters = [];

  void init() {
    state = RecipeFilterState.ready(_activeFilters);
  }

  bool filterListChanged() {
    bool listsAreEqual =
        const ListEquality().equals(_activeFilters, _oldActiveFilters);
    return listsAreEqual;
  }

  void confirmFilters() {
    _oldActiveFilters.clear();
    _oldActiveFilters.addAll(_activeFilters);
    state = RecipeFilterState.ready(_activeFilters);
  }

  void rejectFilters() {
    _activeFilters.clear();
    _activeFilters.addAll(_oldActiveFilters);
    state = RecipeFilterState.ready(_activeFilters);
  }

  void addFilter(String filter) {
    _activeFilters.add(filter);
    state = RecipeFilterState.ready(_activeFilters);
  }

  void removeFilter(String filter) {
    _activeFilters.remove(filter);
    state = RecipeFilterState.ready(_activeFilters);
  }
}
