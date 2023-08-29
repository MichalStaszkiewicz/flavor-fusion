import 'package:flutter/material.dart';

class SearchAdditioalSettings extends StatelessWidget {
  SearchAdditioalSettings({required this.choiceItems});
  List<Widget> choiceItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Wrap(
        spacing: 10,
        children: [...choiceItems],
      ),
    );
  }
}
