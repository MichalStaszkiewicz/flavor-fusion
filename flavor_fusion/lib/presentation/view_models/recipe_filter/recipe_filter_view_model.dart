import 'package:flavor_fusion/presentation/view_models/recipe_filter/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';

import '../../../utility/enums.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recipeFilterViewModel =
    StateNotifierProvider<RecipeFilterViewModel, RecipeFilterState>(
        (ref) => RecipeFilterViewModel(RecipeFilterState.initial()));

class RecipeFilterViewModel extends StateNotifier<RecipeFilterState> {
  RecipeFilterViewModel(super._state);
  final List<String> _activeFilters = [];
  final List<String> _oldActiveFilters = [];
  SortBy _sortBy = SortBy.none;
  SortBy _oldSortBy = SortBy.none;
  void init() {
    state = RecipeFilterState.ready(_activeFilters, _sortBy);
  }

  bool filterListChanged() {
    bool listsAreEqual =
        const ListEquality().equals(_activeFilters, _oldActiveFilters);
    return listsAreEqual;
  }

  void confirmChanges() {
    _oldSortBy = _sortBy;
    _oldActiveFilters.clear();
    _oldActiveFilters.addAll(_activeFilters);
    state = RecipeFilterState.ready(_activeFilters, _sortBy);
  }

  void rejectChanges() {
    _sortBy = _oldSortBy;
    _activeFilters.clear();
    _activeFilters.addAll(_oldActiveFilters);
    state = RecipeFilterState.ready(_activeFilters, _sortBy);
  }

  void addFilter(String filter) {
    _activeFilters.add(filter);
    state = RecipeFilterState.ready(_activeFilters, _sortBy);
  }

  void removeFilter(String filter) {
    _activeFilters.remove(filter);
    state = RecipeFilterState.ready(_activeFilters, _sortBy);
  }

  bool sortMethodChanged() {
    if (_sortBy == _oldSortBy) {
      return true;
    } else {
      return false;
    }
  }

  void selectCheckBox(String name) {
    bool isSortBy = false;

    for (SortBy sortBy in locator<Global>().sortBy) {
      if (sortBy.name.toLowerCase() == name.toLowerCase()) {
        isSortBy = true;
        break;
      }
    }
    if (isSortBy) {
      selectSortType(locator<Global>().sortBy.firstWhere(
          (element) => element.name.toLowerCase() == name.toLowerCase()));
    } else {
      if (_activeFilters.contains(name)) {
        removeFilter(name);
      } else {
        addFilter(name);
      }
    }
  }

  void selectSortType(SortBy sortBy) {
    if (sortBy == _sortBy) {
      _sortBy = SortBy.none;
      state = RecipeFilterState.ready(_activeFilters, _sortBy);
    } else {
      _sortBy = sortBy;

      state = RecipeFilterState.ready(_activeFilters, _sortBy);
    }
  }
}
