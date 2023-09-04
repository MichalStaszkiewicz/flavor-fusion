
import 'package:flutter/material.dart';

class NutrionInfoEntry extends StatelessWidget {
  NutrionInfoEntry(
      {super.key, required this.nutrionCount, required this.nutrionName});
  String nutrionName;
  String nutrionCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            nutrionName.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 11, color: Colors.black.withOpacity(0.6)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            nutrionCount,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
