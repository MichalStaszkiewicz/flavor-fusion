import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';

import '../../data/models/recipe.dart';
import 'dish_details_basic_info.dart';

class DishItemWidget extends StatelessWidget {
  DishItemWidget({required this.recipe});
  Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<AppRouter>()
            .push(DishDetailsRoute(name: recipe.name, recipe: recipe));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 125,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: 130,
              height: 150,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      fit: BoxFit.fill, image: NetworkImage(recipe.mainImage)),
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            recipe.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DishDetailsBasicInfo(
                                  label: recipe.totalTime
                                          .toString()
                                          .substring(0, 3) +
                                      "minutes",
                                  imagePath: 'stopwatch.png'),
                              DishDetailsBasicInfo(
                                  label:
                                      '${recipe.nutrientsPerServing.calories.round()} cal',
                                  imagePath: 'fire-flame-curved.png'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color:
                                        const Color.fromARGB(255, 233, 233, 57),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '4.7',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.black.withOpacity(0.4)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text('Details'),
                              ),
                            )
                          ],
                        ),
                      )

                      //    DishBasicInfoRow(recipe: recipe)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Expanded _buildRecipeBasicInformations(
      BuildContext context, label, IconData icon) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    alignment: Alignment.centerRight, child: Icon(icon))),
            Expanded(
              flex: 2,
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
