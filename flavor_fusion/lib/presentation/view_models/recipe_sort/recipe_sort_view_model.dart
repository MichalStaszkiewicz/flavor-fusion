import 'package:flavor_fusion/presentation/view_models/recipe_sort/states.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var recipeSortViewModel =
    StateNotifierProvider<RecipeSortViewModel, RecipeSortState>(
        (ref) => RecipeSortViewModel(RecipeSortState.initial()));

class RecipeSortViewModel extends StateNotifier<RecipeSortState> {
  RecipeSortViewModel(super.state);
  SortBy _sortBy = SortBy.none;
  SortBy _oldSortBy = SortBy.none;
  void init() {
    state = RecipeSortState.ready(_sortBy);
  }

  bool sortMethodChanged() {
    if (_sortBy == _oldSortBy) {
      return true;
    } else {
      return false;
    }
  }

  void confirmSortType() {
    _oldSortBy = _sortBy;
    state = RecipeSortState.ready(_sortBy);
  }

  void rejectSortType() {
    _sortBy = _oldSortBy;
    state = RecipeSortState.ready(_sortBy);
  }

  void selectSortType(SortBy sortBy) {
    _sortBy = sortBy;
    state = RecipeSortState.ready(_sortBy);
  }
}
