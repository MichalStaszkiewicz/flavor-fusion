import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

class ApplyButton extends StatefulWidget {
  ApplyButton({required this.onPressed, required this.label});
  String label;
  VoidCallback onPressed;

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return BouncingWidgetInOut(
      bouncingType: BouncingType.bounceInOnly,
      scaleFactor: 2,
      duration: Duration(milliseconds: 50),
      onPressed: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 7),
        height: 150,
        child: Center(
          child: Container(
            height: 50,
            width: locator<Global>().mediaQuery.size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepPurple),
            child: Center(
              child: Text(
                'Apply',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
