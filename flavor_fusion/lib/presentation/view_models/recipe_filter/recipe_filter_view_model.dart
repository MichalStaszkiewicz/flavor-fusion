import 'package:flavor_fusion/presentation/view_models/recipe_filter/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';

import '../../../utility/enums.dart';
import '../../../utility/global.dart';
import '../../../utility/service_locator.dart';

var recipeFilterViewModel =
    StateNotifierProvider<RecipeFilterViewModel, RecipeFilterState>(
        (ref) => RecipeFilterViewModel(RecipeFilterState.initial()));

class RecipeFilterViewModel extends StateNotifier<RecipeFilterState> {
  RecipeFilterViewModel(super._state);
  SortBy _oldSortBy = SortBy.none;
  SortBy _sortBy = SortBy.none;
  void init() {
    state = RecipeFilterState.ready(_sortBy);
  }

  bool selected(SortBy selectedSortMethod, String label) {
    if (_sortBy == selectedSortMethod) {


      return true;
    }

    return false;
  }

  void confirmChanges() {
    _oldSortBy = _sortBy;
    state = RecipeFilterState.ready(_sortBy);
  }

  void rejectChanges() {
    _sortBy = _oldSortBy;
    state = RecipeFilterState.ready(_sortBy);
  }

  bool sortMethodChanged() {
    if (_sortBy == _oldSortBy) {
      return true;
    } else {
      return false;
    }
  }

  void selectCheckBox(SortBy selectedSortMethod) {
    _sortBy = selectedSortMethod;
    state = RecipeFilterState.ready(_sortBy);
  }
}
