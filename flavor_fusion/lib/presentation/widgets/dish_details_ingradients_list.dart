import 'package:flutter/material.dart';

class DishDetailsIngradientsList extends StatefulWidget {
  DishDetailsIngradientsList({required this.ingredients});
  List<String> ingredients;

  @override
  State<DishDetailsIngradientsList> createState() =>
      _DishDetailsIngradientsListState();
}

class _DishDetailsIngradientsListState
    extends State<DishDetailsIngradientsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.ingredients.length,
            itemBuilder: (BuildContext context, int index) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    '- ${widget.ingredients[index]}',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                )));
  }
}
