import 'package:flutter/material.dart';

class CookingInstructionLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        'https://www.seriouseats.com/iced-matcha-green-tea-recipe',
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
