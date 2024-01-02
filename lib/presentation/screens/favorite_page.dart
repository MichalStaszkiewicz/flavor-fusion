import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';

@RoutePage()
class FavoriteRecipesPage extends ConsumerStatefulWidget {
  const FavoriteRecipesPage({super.key});

  @override
  FavoriteScreenState createState() => FavoriteScreenState();
}

class FavoriteScreenState extends ConsumerState<FavoriteRecipesPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(favoriteViewModel.notifier).loadRecipies();
    });

    super.initState();
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  TextStyle getTextStyle(Set<MaterialState> states, BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Colors.grey.withOpacity(0.9));
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(favoriteViewModel);

    return Scaffold(
      body: state.when(
          initial: () => _buildInitial(),
          loading: () => _buildLoading(),
          error: () => _buildError(),
          ready: (recipes) => _buildReady(recipes)),
    );
  }

  Container _buildReady(List<Recipe> recipes) {
    return recipes.isNotEmpty
        ? Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: recipes.length,
                itemBuilder: (context, index) => DishItemWidget(
                      recipe: recipes[index],
                    )),
          )
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.left,
                        favoriteRecipesText,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        favoriteNoRecipes,
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

  Center _buildError() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Container _buildLoading() {
    return Container(
      child: Center(
        child: Lottie.asset(height: 250, AssetPath.pageLoading),
      ),
    );
  }

  Center _buildInitial() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
