import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import 'dish_details_ingradients_list.dart';

class DishDetails extends ConsumerWidget {
  DishDetails({required this.name, required this.description});
  String name;
  String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipeDetailsState = ref.watch(recipeDetailsViewModel);
    return recipeDetailsState.when(
        error: () => _buildError(),
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        ready: (bool expanded, bool isFavorite) =>
            _buildReady(context, expanded, ref));
  }

  Column _buildReady(BuildContext context, bool expanded, WidgetRef ref) {
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
                  Container(
                    width: locator<Global>().mediaQuery.size.width,
                    child: Text(
                      textAlign: TextAlign.start,
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _buildBasicInfo(
                        context,
                        '10 mins',
                        Icons.timer,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      _buildBasicInfo(context, '354 cal', Icons.cabin),
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
                          height: expanded
                              ? ref
                                  .read(recipeDetailsViewModel.notifier)
                                  .descriptionHeight
                              : 40,
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            description,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: locator<Global>().greyText,
                                ),
                            maxLines: null,
                            overflow: expanded ? TextOverflow.fade : null,
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          width: double.infinity,
                          child: GestureDetector(
                              onTap: () {
                                ref
                                    .read(recipeDetailsViewModel.notifier)
                                    .setDescriptionExpand(description);
                              },
                              child: Container(
                                  alignment: Alignment.bottomRight,
                                  height: 30,
                                  child: Text(
                                      !expanded ? "View more" : "View less"))))
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

  Container _buildInitial() => Container();

  Container _buildLoading() => Container();

  Container _buildError() => Container();

  Container _buildBasicInfo(BuildContext context, String label, IconData icon) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: locator<Global>().greyText,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: locator<Global>().greyText,
                ),
          )
        ],
      ),
    );
  }
}
