
import 'package:flutter/material.dart';

class CookingInstructionTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        'Cooking Instruction',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
