import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';

import '../../utility/service_locator.dart';

class DishDetailsBasicInfo extends StatelessWidget {
  DishDetailsBasicInfo(
      {super.key, required this.imagePath, required this.label});
  String imagePath;
  String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(
              color: Colors.black12.withOpacity(0.4),
              height: 20,
              width: 20,
              image: AssetImage('assets/$imagePath')),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.4),
                letterSpacing: 0.5),
          )
        ],
      ),
    );
  }
}
