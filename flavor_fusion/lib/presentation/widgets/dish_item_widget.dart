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
    return Container(
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
                                label: recipe.totalTime.toString(),
                                imagePath: 'stopwatch.png'),
                            DishDetailsBasicInfo(
                                label:
                                    '${recipe.nutrientsPerServing.calories.floor()} cal',
                                imagePath: 'fire-flame-curved.png'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        locator<AppRouter>().push(DishDetailsRoute(
                            name: recipe.name, recipe: recipe));
                      },
                      child: Container(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text('Details'),
                            ),
                          )),
                    )

                    //    DishBasicInfoRow(recipe: recipe)
                  ],
                ),
              )),
        ],
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
