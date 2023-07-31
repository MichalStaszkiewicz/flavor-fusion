import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';

class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  FavoriteScreenState createState() => FavoriteScreenState();
}

class FavoriteScreenState extends ConsumerState<FavoriteScreen> {
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
    print(state);
    return state.when(
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        error: () => _buildError(),
        ready: (recipes) => _buildReady(recipes));
  }

  Container _buildReady(List<Recipe> recipes) {
    return Container(
      height: locator<Global>().deviceDimenstions.height / 1.2,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: recipes.length,
          itemBuilder: (context, index) => DishItemWidget(
                recipe: recipes[index],
              )),
    );
  }

  Center _buildError() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Center _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Center _buildInitial() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
