import 'package:flavor_fusion/presentation/view_models/recipe_filter/recipe_filter_view_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeFilterSlider extends ConsumerStatefulWidget {
  RecipeFilterSlider(
      {required this.label,
      required this.max,
      required this.divisionDivider,
      required this.sliderType});
  String label;
  int divisionDivider;
  FilterSliderType sliderType;

  double max;
  @override
  RecipeFilterSliderState createState() => RecipeFilterSliderState();
}

class RecipeFilterSliderState extends ConsumerState<RecipeFilterSlider> {
  @override
  Widget build(BuildContext context) {
    double sliderValue = ref
        .watch(recipeFilterViewModel.notifier)
        .getSliderValue(widget.sliderType);
    return Column(
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Slider(
          divisions: widget.max.toDouble() ~/ widget.divisionDivider,
          label: "${sliderValue.floor()}",
          min: 0,
          max: widget.max,
          onChanged: (value) {
            ref
                .read(recipeFilterViewModel.notifier)
                .setMinimum(value, widget.sliderType);
            setState(() {});
          },
          value: sliderValue,
        ),
      ],
    );
  }
}
