import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  DialogButton({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });
  String label;
  Color backgroundColor;
  Color borderColor;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: backgroundColor,
          border: Border.all(width: 2.2, color: borderColor)),
      child: Center(
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
