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
          Image(height: 20, width: 20, image: AssetImage('assets/$imagePath')),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: locator<Global>().greyText,
                ),
          )
        ],
      ),
    );
  }
}
