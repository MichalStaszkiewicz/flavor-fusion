import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/groceries/state_widget/groceries_ready.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';



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
