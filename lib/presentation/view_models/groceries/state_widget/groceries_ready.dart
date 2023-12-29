import 'package:flavor_fusion/presentation/view_models/groceries/groceries_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/grocery_list.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_ingredients_list.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/grocery.dart';
import '../../../widgets/remove_selected_ingredients_button.dart';

class GroceriesReadyWidget extends ConsumerStatefulWidget {
  GroceriesReadyWidget({
    required this.groceries,
    required this.selectedIngredients,
  });
  List<Grocery> groceries;
  int selectedIngredients;

  @override
  GroceriesReadyWidgetState createState() => GroceriesReadyWidgetState();
}

class GroceriesReadyWidgetState extends ConsumerState<GroceriesReadyWidget>
    with TickerProviderStateMixin {
  late Animation<double> _selectedIngredientsRemoveButtonAnimation;
  late AnimationController _selectedIngredientsRemoveButtonController;

  @override
  void initState() {
    _selectedIngredientsRemoveButtonController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    _selectedIngredientsRemoveButtonAnimation =
        Tween<double>(begin: 0, end: 1.0)
            .animate(_selectedIngredientsRemoveButtonController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  @override
  void dispose() {
    _selectedIngredientsRemoveButtonController.dispose();
    super.dispose();
  }

  void manageRemoveButtonAnimation() async {
    if (widget.selectedIngredients > 0) {
      await _selectedIngredientsRemoveButtonController
          .forward()
          .then((value) => {ignoreRemoveButton = false});
    } else {
      await _selectedIngredientsRemoveButtonController
          .reverse()
          .then((value) => {ignoreRemoveButton = true});
    }
  }

  bool ignoreRemoveButton = false;
  @override
  Widget build(BuildContext context) {
    manageRemoveButtonAnimation();
    return widget.groceries.isNotEmpty
        ? Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: GroceryList(
                    groceries: widget.groceries,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 4,
                  top: MediaQuery.of(context).size.height / 1.4,
                  child: RemoveSelectedIngredientsButton(
                    ref: ref,
                    opacity: _selectedIngredientsRemoveButtonAnimation,
                    selectedIngredients: widget.selectedIngredients,
                    groceries: widget.groceries,
                  ),
                )
              ],
            ))
        : Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.left,
                        'Shopping List',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        "If you add something to your shopping list it will appear right here !",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
