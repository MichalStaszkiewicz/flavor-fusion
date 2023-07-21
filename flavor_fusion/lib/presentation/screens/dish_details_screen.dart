import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/bubble_icon_button.dart';
import 'package:flavor_fusion/presentation/widgets/custom_button.dart';
import 'package:flavor_fusion/presentation/widgets/dish_custom_image.dart';
import 'package:flavor_fusion/presentation/widgets/dish_details.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_details/recipe_details_view_model.dart';

@RoutePage()
class DishDetailsScreen extends StatefulWidget {
  DishDetailsScreen({required this.name});
  String name;
  @override
  State<DishDetailsScreen> createState() => _DishDetailsScreenState();
}

class _DishDetailsScreenState extends State<DishDetailsScreen>
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

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
              ScrollDirection.reverse &&
          _scrollController.offset >= opacityChangePoints[opacityIterator]) {
        if (opacityIterator < opacityChangePoints.length - 1 &&
            (imageOpacity - 0.066) > 0.0) {
          opacityIterator++;
          imageOpacity -= 0.066;
          setState(() {});
        }
      }
      if (_scrollController.position.userScrollDirection ==
              ScrollDirection.forward &&
          _scrollController.offset < opacityChangePoints[opacityIterator]) {
        if (opacityIterator > 0 && (imageOpacity + 0.066) < 1.0) {
          imageOpacity += 0.066;
          opacityIterator--;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Stack(children: [
              DishCustomImage(
                opacity: imageOpacity,
              ),
              DishDetails(
                description: lorem,
                name: widget.name,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
