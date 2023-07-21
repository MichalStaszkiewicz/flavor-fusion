import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              RecipeGroup(),
              RecipeGroup(),
              RecipeGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
