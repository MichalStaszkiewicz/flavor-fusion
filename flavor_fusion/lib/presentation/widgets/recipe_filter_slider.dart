import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeFilterSlider extends ConsumerStatefulWidget {
  RecipeFilterSlider(
      {required this.label, required this.max});
  String label;

  double max;
  @override
  RecipeFilterSliderState createState() => RecipeFilterSliderState();
}

class RecipeFilterSliderState extends ConsumerState<RecipeFilterSlider> {
  double _sliderCurrentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Slider(
          divisions: widget.max.toInt(),
          label: "${_sliderCurrentValue.floor()}",
          min: 0,
          max: widget.max,
          onChanged: (value) {
            setState(() {
              _sliderCurrentValue = value;
            });
          },
          value: _sliderCurrentValue,
        ),
      ],
    );
  }
}
