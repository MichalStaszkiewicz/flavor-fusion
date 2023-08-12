import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flavor_fusion/presentation/widgets/bubble_icon_button.dart';
import 'package:flavor_fusion/presentation/widgets/custom_button.dart';
import 'package:flavor_fusion/presentation/widgets/dish_custom_image.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';

@RoutePage()
class DishDetailsScreen extends ConsumerStatefulWidget {
  DishDetailsScreen({required this.name, required this.recipe});
  String name;
  Recipe recipe;
  @override
  DishDetailsScreenState createState() => DishDetailsScreenState();
}

class DishDetailsScreenState extends ConsumerState<DishDetailsScreen>
    with TickerProviderStateMixin {
  String lorem =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.';

  double imageOpacity = 1.0;
  int opacityIterator = 0;
  late ScrollController _scrollController;
  List<double> opacityChangePoints = [
    25.0,
    35.0,
    50.0,
    60.0,
    70.0,
    100.0,
    150.0,
    200.0,
    250.0,
    275.0,
    290.0,
    295.0,
    297.5,
    299.0,
    299.5,
    300.0
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(recipeDetailsViewModel.notifier).loadDetails(widget.recipe);
    });
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      const maxOpacityChange = 0.986;
      const maxScroll = 300.0;
      final currentScroll = _scrollController.offset;
      final newImageOpacity =
          1.0 - (currentScroll / maxScroll) * maxOpacityChange;

      // Ogranicz wartość imageOpacity od 0 do 1.
      imageOpacity = newImageOpacity.clamp(0.0, 1.0);
      // print(imageOpacity);

      setState(() {});
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipeDetailsState = ref.watch(recipeDetailsViewModel);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: recipeDetailsState.when(
          error: () => Container(),
          initial: () => Container(),
          loading: () => Container(),
          ready: (bool expanded, bool isFavorite) => _buildReady(),
        ));
  }

  Stack _buildReady() {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(children: [
            DishCustomImage(
              opacity: imageOpacity,
              recipe: widget.recipe,
            ),
            DishDetails(
              description: lorem,
              recipe: widget.recipe,
            ),
          ]),
        ),
      ),
    ]);
  }
}
