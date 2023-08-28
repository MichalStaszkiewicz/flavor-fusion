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
  double _oldMinimumTime = 0;
  double _oldMinimumCalories = 0;
  double _minimumTime = 0;
  double _minimumCalories = 0;

  double getSliderValue(FilterSliderType type) {
    if (type == FilterSliderType.calories) {
      return _minimumCalories;
    } else {
      return _minimumTime;
    }
  }

  void init() {
    state = RecipeFilterState.ready(_sortBy, _minimumTime, _minimumCalories);
  }

  bool selected(SortBy selectedSortMethod, String label) {
    if (_sortBy == selectedSortMethod) {
      return true;
    }

    return false;
  }

  void setMinimum(double updatedMinimum, FilterSliderType type) {
    if (state is RecipeFilterReady) {
      final state = this.state as RecipeFilterReady;
      if (type == FilterSliderType.calories) {
        _minimumCalories = updatedMinimum;
        this.state = RecipeFilterState.ready(
            state.sortBy, state.minimumTime, _minimumCalories);
      } else {
        _minimumTime = updatedMinimum;
        this.state = RecipeFilterState.ready(
            state.sortBy, _minimumTime, state.minimumCalories);
      }
    }
  }

  void confirmChanges() {
    _oldSortBy = _sortBy;
    _oldMinimumTime = _minimumTime;
    _oldMinimumCalories = _minimumCalories;
    state = RecipeFilterState.ready(_sortBy, _minimumTime, _minimumCalories);
  }

  void rejectChanges() {
    _sortBy = _oldSortBy;
    _minimumTime = _oldMinimumTime;
    _minimumCalories = _oldMinimumCalories;
    state = RecipeFilterState.ready(_sortBy, _minimumTime, _minimumCalories);
  }

  bool sortMethodChanged() {
    if (_sortBy != _oldSortBy ||
        _minimumCalories != _oldMinimumCalories ||
        _oldMinimumTime != _minimumTime) {
      return false;
    } else {
      return true;
    }
  }

  void selectCheckBox(SortBy selectedSortMethod) {
    _sortBy = selectedSortMethod;
    state = RecipeFilterState.ready(_sortBy, _minimumTime, _minimumCalories);
  }
}
