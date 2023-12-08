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
        vsync: this, duration: const Duration(milliseconds: 150));
    setupAnimation(Colors.white, Colors.black, Colors.black, Colors.white);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void setupAnimation(Color bgColorStart, Color bgColorEnd,
      Color labelColorStart, Color labelColorEnd) {
    _backgroundAnimation =
        ColorTween(begin: bgColorStart, end: bgColorEnd).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
    _labelAnimation = ColorTween(begin: labelColorStart, end: labelColorEnd)
        .animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void manageAnimations() {
    ref.watch(recipesViewModel).maybeWhen(
        search: (_, __, ___, ____, skillLevel, mealType, allowAnimations) {
          if (allowAnimations) {
            setupAnimation(
                Colors.white, Colors.black, Colors.black, Colors.white);

            if (widget.settingsType == RecipeSettings.meal) {
              if (mealType.name.toLowerCase() == widget.label.toLowerCase()) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            } else {
              if (skillLevel.name.toLowerCase() == widget.label.toLowerCase()) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            }
          } else {
            if (mealType.name.toLowerCase() == widget.label.toLowerCase() ||
                skillLevel.name.toLowerCase() == widget.label.toLowerCase()) {
              _controller.value = 1.0;
            }
          }
        },
        orElse: () => {});
  }

  void onTap() {
    ref.watch(recipesViewModel).maybeWhen(
        search: (suggestions, selectedIngredients, search, searchingInProgress,
                skillLevel, mealType, allowAnimations) =>
            {
              if (widget.settingsType == RecipeSettings.meal)
                {
                  if (mealType.name.toLowerCase() == widget.label.toLowerCase())
                    {
                      ref
                          .read(recipesViewModel.notifier)
                          .selectMealType(MealType.none)
                    }
                  else
                    {
                      ref.read(recipesViewModel.notifier).selectMealType(
                          MealType.values.firstWhere((element) =>
                              element.name.toLowerCase() ==
                              widget.label.toLowerCase()))
                    }
                }
              else
                {
                  if (skillLevel.name.toLowerCase() ==
                      widget.label.toLowerCase())
                    {
                      ref
                          .read(recipesViewModel.notifier)
                          .selectSkillLevel(SkillLevel.none)
                    }
                  else
                    {
                      ref.read(recipesViewModel.notifier).selectSkillLevel(
                          SkillLevel.values.firstWhere((element) =>
                              element.name.toLowerCase() ==
                              widget.label.toLowerCase()))
                    }
                }
            },
        orElse: () => {});
  }

  @override
  Widget build(BuildContext context) {
    manageAnimations();
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: onTap,
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
