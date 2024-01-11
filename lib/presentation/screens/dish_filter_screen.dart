import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_filter/recipe_filter_view_model.dart';

import 'package:flavor_fusion/presentation/widgets/apply_button.dart';
import 'package:flavor_fusion/presentation/widgets/filter_radio.dart';
import 'package:flavor_fusion/presentation/widgets/filter_radio_list.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_filter_slider.dart';
import 'package:flavor_fusion/utility/dialog_manager.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../../utility/enums.dart';
import '../../utility/global.dart';
import '../view_models/recipe_filter/states.dart';

@RoutePage(name: "DishFilterPanel")
class DishFilterScreen extends ConsumerStatefulWidget {
  const DishFilterScreen({super.key});

  @override
  DishFilterScreenState createState() => DishFilterScreenState();
}

class DishFilterScreenState extends ConsumerState<DishFilterScreen> {
  List<Widget> generateSortMethods(String itemName, List<SortBy> methods) {
    List<Widget> result = [];
    result.add(FilterRadio(
      groupValue: itemName,
      label: 'Ascending',
      selectedMethod: methods[0],
    ));
    result.add(FilterRadio(
      groupValue: itemName,
      label: 'Descending',
      selectedMethod: methods[1],
    ));
    return result;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(recipeFilterViewModel.notifier).init();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              RecipeFilterSlider(
                label: 'Prepare Time (Minimum)',
                max: 100,
                divisionDivider: 10,
                sliderType: FilterSliderType.time,
              ),
              RecipeFilterSlider(
                label: 'Calories (Minimum)',
                divisionDivider: 100,
                max: 6000,
                sliderType: FilterSliderType.calories,
              ),
              FilterCheckBoxList(
                items: [
                  ...generateSortMethods("calories",
                      [SortBy.caloriesDescending, SortBy.caloriesAscending])
                ],
                label: 'Calories',
              ),
              FilterCheckBoxList(
                items: [
                  ...generateSortMethods(
                      "time", [SortBy.timeDescending, SortBy.timeAscending])
                ],
                label: 'Time',
              ),
              ApplyButton(
                onPressed: () {
                  ref.read(recipeFilterViewModel).when(
                      initial: () => (),
                      loading: () => (),
                      error: () => (),
                      ready: (sortBy, minTime, minCal) {
                        ref
                            .read(favoriteViewModel.notifier)
                            .apply(sortBy, minTime, minCal);
                        ref
                            .read(recipeFilterViewModel.notifier)
                            .confirmChanges();

                        context.router.pop();
                      });
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
