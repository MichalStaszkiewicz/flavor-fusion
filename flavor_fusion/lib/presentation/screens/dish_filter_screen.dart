import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_filter/recipe_filter_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/apply_button.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box_list.dart';
import 'package:flavor_fusion/utility/dialog_manager.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../../utility/enums.dart';
import '../../utility/global.dart';
import '../view_models/recipe_filter/states.dart';
import '../view_models/search_screen/states.dart';

@RoutePage()
class DishFilterScreen extends ConsumerStatefulWidget {
  const DishFilterScreen({super.key});

  @override
  DishFilterScreenState createState() => DishFilterScreenState();
}

class DishFilterScreenState extends ConsumerState<DishFilterScreen> {
  //temporary before implementing backend

  List<Widget> generateDishTypes() {
    List<Widget> result = [];
    for (DishType dishType in locator<Global>().dishTypes) {
      result.add(FilterCheckBox(
        label: dishType.name,
        options: SearchOptions.filter,
      ));
    }
    return result;
  }

  List<Widget> generateMealTypes() {
    List<Widget> result = [];
    for (MealType dishType in locator<Global>().mealTypes) {
      result.add(FilterCheckBox(
        label: dishType.name,
        options: SearchOptions.filter,
      ));
    }
    return result;
  }

  List<Widget> generateDiets() {
    List<Widget> result = [];
    for (Diet dishType in locator<Global>().diets) {
      result.add(FilterCheckBox(
        label: dishType.name,
        options: SearchOptions.filter,
      ));
    }
    return result;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipeFilterViewModel.notifier).init();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(ref),
      body: Container(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              FilterCheckBoxList(
                items: [...generateDiets()],
                label: 'Diet',
              ),
              FilterCheckBoxList(
                items: [...generateMealTypes()],
                label: 'Meal Type',
              ),
              FilterCheckBoxList(
                items: [...generateDishTypes()],
                label: 'Dish Type',
              ),
              ApplyButton(onPressed: () {
                ref.read(recipeFilterViewModel).when(
                    initial: () => (),
                    loading: () => (),
                    error: () => (),
                    ready: (filters) => ref
                        .read(searchScreenViewModel.notifier)
                        .applyFilters(filters));

                context.router.pop();
              })
            ],
          ),
        )),
      ),
    );
  }

  AppBar _buildAppBar(WidgetRef ref) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  DialogManager.confirmDialog(
                      'You did not apply filters',
                      'Do you want to apply changes before quit ?',
                      context, () {
                    context.router.pop().then((value) => context.router.pop());
                  }, () {
                    context.router.pop().then((value) => context.router.pop());
                    ref.read(recipeFilterViewModel).when(
                        initial: () => (),
                        loading: () => (),
                        error: () => (),
                        ready: (filters) => ref
                            .read(searchScreenViewModel.notifier)
                            .applyFilters(filters));
                  });
                },
              ),
            )),
            Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Dishes Filter',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
