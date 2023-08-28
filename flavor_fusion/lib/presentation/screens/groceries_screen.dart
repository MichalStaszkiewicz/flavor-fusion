import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/state_widget/groceries_ready.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/states.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_filter/recipe_filter_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../data/models/grocery.dart';
import '../../data/models/recipe.dart';
import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../widgets/chip_filter_sort.dart';
import '../widgets/recipe_ingredients_list.dart';

class GroceriesScreen extends ConsumerStatefulWidget {
  const GroceriesScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<GroceriesScreen> {
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
          child: Lottie.asset(
            height:250,
            'assets/loading.json'),
        ),
      );

  Container _buildGroceriesError() => Container();
}
