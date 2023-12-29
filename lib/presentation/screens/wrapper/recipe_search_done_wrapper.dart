import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "RecipeSearchDoneAutoRouter")
class RecipeSearchDoneWrapper extends StatefulWidget {
  const RecipeSearchDoneWrapper({super.key});

  @override
  State<RecipeSearchDoneWrapper> createState() =>
      _RecipeSearchDoneWrapperState();
}

class _RecipeSearchDoneWrapperState extends State<RecipeSearchDoneWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
