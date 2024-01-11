import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/state_widget/groceries_ready.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/utility/asset_path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class ShoppingListPage extends ConsumerStatefulWidget {
  const ShoppingListPage({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<ShoppingListPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(groceryViewModel.notifier).loadGroceries();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(groceryViewModel);

   
    return state.when(
        initial: () => _buildGroceriesInitial(),
        loading: () => _buildGroceriesLoading(),
        error: () => _buildGroceriesError(),
        ready: (groceries, selected, controllers) => GroceriesReadyWidget(
              groceries: groceries,
              selectedIngredients: selected,
            ));
  }

  Container _buildGroceriesInitial() => Container();

  Container _buildGroceriesLoading() => Container(
        child: Center(
          child: Lottie.asset(height: 250, AssetPath.pageLoading),
        ),
      );

  Container _buildGroceriesError() => Container();
}
