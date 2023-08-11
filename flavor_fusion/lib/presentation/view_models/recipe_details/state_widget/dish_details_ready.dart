import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/recipe.dart';
import '../../../../utility/global.dart';
import '../../../../utility/service_locator.dart';
import '../../../widgets/dish_details_basic_info.dart';
import '../../../widgets/dish_details_ingradients_list.dart';
import '../recipe_details_view_model.dart';

class DishDetailsReadyWidget extends StatefulWidget {
  DishDetailsReadyWidget(
      {super.key,
      required this.recipe,
      required this.description,
      required this.expanded,
      required this.ref});
  Recipe recipe;
  String description;
  bool expanded;
  WidgetRef ref;
  @override
  State<DishDetailsReadyWidget> createState() => _DishDetailsReadyWidgetState();
}

class _DishDetailsReadyWidgetState extends State<DishDetailsReadyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IgnorePointer(
          child: Container(
            height: 300,
            color: Colors.transparent,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: locator<Global>().mediaQuery.size.width,
                          child: Text(
                            textAlign: TextAlign.start,
                            widget.recipe.label,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.ref
                              .read(recipeDetailsViewModel.notifier)
                              .saveRecipeIngredients(widget.recipe);
                        },
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ]),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.shop, color: Colors.white),
                              Container(
                                  padding: EdgeInsets.only(top: 7),
                                  height: 30,
                                  child: Text(
                                    'Save',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      DishDetailsBasicInfo(
                        label: '10 mins',
                        icon: Icons.timer,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      DishDetailsBasicInfo(label: '354 cal', icon: Icons.cabin),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      textAlign: TextAlign.start,
                      'Description',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      AnimatedContainer(
                          height: widget.expanded
                              ? widget.ref
                                  .read(recipeDetailsViewModel.notifier)
                                  .descriptionHeight
                              : 40,
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            widget.description,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: locator<Global>().greyText,
                                ),
                            maxLines: null,
                            overflow:
                                widget.expanded ? TextOverflow.fade : null,
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          width: double.infinity,
                          child: GestureDetector(
                              onTap: () {
                                widget.ref
                                    .read(recipeDetailsViewModel.notifier)
                                    .setDescriptionExpand(widget.description);
                              },
                              child: Container(
                                  alignment: Alignment.bottomRight,
                                  height: 30,
                                  child: Text(!widget.expanded
                                      ? "View more"
                                      : "View less"))))
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      textAlign: TextAlign.start,
                      'Ingrediants',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DishDetailsIngradientsList(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      textAlign: TextAlign.start,
                      'Cooking Instruction',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'https://www.seriouseats.com/iced-matcha-green-tea-recipe',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
