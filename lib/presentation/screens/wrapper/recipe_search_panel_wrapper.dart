import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: "RecipeSearchPanelAutoRouter")
class RecipeSearchPanelWrapper extends ConsumerStatefulWidget {
  RecipeSearchPanelWrapper();

  @override
  ConsumerState<RecipeSearchPanelWrapper> createState() =>
      RecipeSearchPanelWrapperState();
}

class RecipeSearchPanelWrapperState
    extends ConsumerState<RecipeSearchPanelWrapper> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(searchBarModel.notifier).expandSearchBar();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
