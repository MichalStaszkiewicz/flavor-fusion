import 'package:flavor_fusion/presentation/view_models/recipes/recipes_view_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecipeSearchSettingsChip extends ConsumerStatefulWidget {
  RecipeSearchSettingsChip({required this.label, required this.settingsType});
  String label;
  RecipeSettings settingsType;

  @override
  RecipeSearchSettingsChipState createState() =>
      RecipeSearchSettingsChipState();
}

class RecipeSearchSettingsChipState
    extends ConsumerState<RecipeSearchSettingsChip>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _backgroundAnimation;
  late Animation _labelAnimation;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _backgroundAnimation =
        ColorTween(begin: Colors.white, end: Colors.black).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
    _labelAnimation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(_controller)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          if (widget.settingsType == RecipeSettings.meal) {
            ref.read(recipesViewModel.notifier).selectMealType(MealType.values
                .firstWhere((element) =>
                    element.name.toLowerCase() == widget.label.toLowerCase()));
         if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
          } else {
            ref.read(recipesViewModel.notifier).selectSkillLevel(
                SkillLevel.values.firstWhere((element) =>
                    element.name.toLowerCase() == widget.label.toLowerCase()));
           
          }
        },
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              color: _backgroundAnimation.value,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              widget.label,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: _labelAnimation.value),
            ),
          ),
        ),
      ),
    );
  }
}
