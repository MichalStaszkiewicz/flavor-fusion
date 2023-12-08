import 'package:flutter/material.dart';

class BubbleIconButton extends StatelessWidget {
  BubbleIconButton({required this.icon, required this.iconColor});
  IconData icon;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 0),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
