import 'package:flavor_fusion/data/models/recipe.dart';
import 'package:flutter/material.dart';

class CookingStepsList extends StatelessWidget {
  const CookingStepsList({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: recipe.instructions.length,
          itemBuilder: (BuildContext context, int index) => Container(
                margin: EdgeInsets.only(bottom: 10),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Step ${index + 1}. ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6))),
                      TextSpan(
                        text: recipe.instructions[index],
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(letterSpacing: 0.5),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
