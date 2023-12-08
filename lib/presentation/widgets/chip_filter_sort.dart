import 'package:flutter/material.dart';

class FilterSortChip extends StatelessWidget {
  FilterSortChip(
      {required this.label,
      required this.selectedFilters,
      required this.avatar});
  String label;
  int selectedFilters;
  IconData avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chip(
        avatar: Container(
          child: Center(
            child: Icon(avatar),
          ),
        ),
        side: BorderSide(color: Colors.transparent),
        elevation: 2,
        shadowColor: Colors.grey.withOpacity(1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        labelStyle: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Colors.black),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(label),
            SizedBox(
              width: 5,
            ),
            selectedFilters > 0
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        selectedFilters > 5 ? "5+" : selectedFilters.toString(),
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
