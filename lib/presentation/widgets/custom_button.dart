import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.height, required this.width, required this.label});
  double height;
  double width;
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  CustomButtonWithIcon(
      {required this.height,
      required this.width,
      required this.label,
      required this.icon});
  double height;
  double width;
  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
