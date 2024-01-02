import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/asset_path.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/presentation/widgets/dish_basic_info_row.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:get/get.dart';

import '../../data/models/recipe.dart';
import 'dish_details_basic_info.dart';

class DishItemWidget extends StatelessWidget {
  final Recipe recipe;

  DishItemWidget({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 125,
      child: Row(
        children: [
          _buildImageContainer(context),
          _buildDetailsContainer(context),
        ],
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 130,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholderFit: BoxFit.none,
              placeholderFilterQuality: FilterQuality.high,
              placeholder: AssetPath.imageLoading,
              placeholderScale: 1,
              fit: BoxFit.fill,
              image: recipe.mainImage,
              width: double.infinity,
              height: double.infinity,
            )),
      ),
    );
  }

  Widget _buildDetailsContainer(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildRecipeName(context),
            _buildBasicInfoRow(context),
            GestureDetector(
              onTap: () {
                context.router
                    .push(DishDetailsRoute(name: recipe.name, recipe: recipe));
              },
              child: _buildDetailsButton(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeName(BuildContext context) {
    return Expanded(
      child: Container(
        child: Text(
          recipe.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  Widget _buildBasicInfoRow(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DishDetailsBasicInfo(
              label: recipe.totalTime.toString(),
              imagePath: AssetPath.stopwatch,
            ),
            DishDetailsBasicInfo(
              label: '${recipe.nutrientsPerServing.calories.floor()} cal',
              imagePath: AssetPath.fireFlame,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            AppStrings.details,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
