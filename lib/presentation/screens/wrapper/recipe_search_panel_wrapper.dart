import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "RecipeSearchPanelAutoRouter")
class RecipeSearchPanelWrapper extends StatefulWidget {
  const RecipeSearchPanelWrapper({super.key});

  @override
  State<RecipeSearchPanelWrapper> createState() =>
      _RecipeSearchPanelWrapperState();
}

class _RecipeSearchPanelWrapperState extends State<RecipeSearchPanelWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
