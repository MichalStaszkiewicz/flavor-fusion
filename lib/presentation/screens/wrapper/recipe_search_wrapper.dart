import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/screens/recipes_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RecipeSearchPageWrapper extends StatefulWidget {
  const RecipeSearchPageWrapper({super.key});

  @override
  State<RecipeSearchPageWrapper> createState() => _RecipeSearchPageWrapperState();
}

class _RecipeSearchPageWrapperState extends State<RecipeSearchPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
