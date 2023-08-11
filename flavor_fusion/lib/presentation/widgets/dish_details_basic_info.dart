import 'package:flavor_fusion/utility/global.dart';
import 'package:flutter/material.dart';

import '../../utility/service_locator.dart';

class DishDetailsBasicInfo extends StatelessWidget {
  DishDetailsBasicInfo({super.key, required this.icon, required this.label});
  IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: locator<Global>().greyText,
          ),
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
