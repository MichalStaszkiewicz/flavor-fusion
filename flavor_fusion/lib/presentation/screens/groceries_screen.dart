import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_filter/recipe_filter_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class SearchScreenState extends ConsumerState<GroceriesScreen>
    with TickerProviderStateMixin {
  late Animation<double> _selectedIngredientsRemoveButtonAnimation;
  late AnimationController _selectedIngredientsRemoveButtonController;

  @override
  void initState() {
    _selectedIngredientsRemoveButtonController =
        AnimationController(vsync: this);
    _selectedIngredientsRemoveButtonAnimation =
        Tween<double>(begin: 0.1, end: 1.0)
            .animate(_selectedIngredientsRemoveButtonController)
          ..addListener(() {
            setState(() {});
          });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(groceryViewModel.notifier).loadGroceries();
    });
    super.initState();
  }

  @override
  void dispose() {
    _selectedIngredientsRemoveButtonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(groceryViewModel);
    return state.when(
        initial: () => _buildGroceriesInitial(),
        loading: () => _buildGroceriesLoading(),
        error: () => _buildGroceriesError(),
        ready: (groceries, selected) =>
            _buildGroceriesReady(groceries, selected, ref));
  }

  Container _buildGroceriesInitial() => Container();

  Container _buildGroceriesLoading() => Container();

  Container _buildGroceriesError() => Container();

  Container _buildGroceriesReady(
      List<Grocery> groceries, int selected, WidgetRef ref) {
    return Container(
        height: locator<Global>().deviceDimenstions.height,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                  itemCount: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => RecipeIngredientsList(
                        ingredients: groceries[index].ingredients,
                        recipeName: groceries[index].recipeName,
                        recipeIndex: index,
                      )),
            ),
            selected > 0
                ? Positioned(
                    left: locator<Global>().deviceDimenstions.width / 4,
                    top: locator<Global>().deviceDimenstions.height / 1.4,
                    child: GestureDetector(
                      onTap: () {
                        ref.read(groceryViewModel.notifier).removeSelected();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            color: const Color.fromARGB(255, 86, 144, 245),
                            borderRadius: BorderRadius.circular(5)),
                        child: FadeTransition(
                          opacity: _selectedIngredientsRemoveButtonAnimation,
                          child: Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Delete Selected ($selected)',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ));
  }
}
