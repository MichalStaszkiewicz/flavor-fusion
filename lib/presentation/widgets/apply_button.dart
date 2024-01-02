import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return Theme(
      data: Theme.of(context),
      child: BouncingWidgetInOut(
        bouncingType: BouncingType.bounceInOnly,
        scaleFactor: 1,
        duration: Duration(milliseconds: 50),
        onPressed: widget.onPressed,
        child: Container(
          margin: const EdgeInsets.only(left: 7),
          height: 150,
          child: Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: context.theme.primaryColor),
              child: Center(
                child: Text(
                  AppStrings.apply,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
