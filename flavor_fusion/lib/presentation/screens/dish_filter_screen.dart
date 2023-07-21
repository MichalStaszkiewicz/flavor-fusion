import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/apply_button.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box_list.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../../utility/enums.dart';
import '../../utility/global.dart';

@RoutePage()
class DishFilterScreen extends StatefulWidget {
  const DishFilterScreen({super.key});

  @override
  State<DishFilterScreen> createState() => _DishFilterScreenState();
}

class _DishFilterScreenState extends State<DishFilterScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
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
              //TODO implement filter methog callback here
              ApplyButton(onPressed: () {})
            ],
          ),
        )),
      ),
    );
  }

  AppBar _buildAppBar() {
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
                  context.router.pop();
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
