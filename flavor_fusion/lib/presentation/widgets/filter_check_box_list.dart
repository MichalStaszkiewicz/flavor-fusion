import 'package:flutter/material.dart';

class FilterCheckBoxList extends StatelessWidget {
  FilterCheckBoxList({required this.label, required this.items});
  String label;
  List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              label,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => items[index])
        ],
      ),
    );
  }
}
