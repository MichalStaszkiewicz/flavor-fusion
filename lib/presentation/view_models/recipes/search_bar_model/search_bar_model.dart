import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchBarModel =
    StateNotifierProvider<SearchBarModel, SearchBarModelState>((ref) {
  return SearchBarModel(SearchBarModelState.initial());
});

class SearchBarModel extends StateNotifier<SearchBarModelState> {
  SearchBarModel(super.state);

  void init() {
    state = SearchBarModelState.ready(false, true, false);
  }

  void expandSearchBar() {
    if (state is SearchBarModelReady) {
      final state = this.state as SearchBarModelReady;

      this.state = SearchBarModelState.ready(
          !state.recipeSearchBarExpanded, state.renderAppBar, false);
    }
  }

  void toggleAppBar(bool renderAppBar, bool animateAppBar) {
    if (state is SearchBarModelReady) {
      final state = this.state as SearchBarModelReady;

      this.state = SearchBarModelState.ready(
          state.recipeSearchBarExpanded, renderAppBar, animateAppBar);
    }
  }
}
