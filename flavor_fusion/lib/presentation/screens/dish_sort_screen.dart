import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/apply_button.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box_list.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../../utility/enums.dart';
import '../../utility/global.dart';

@RoutePage()
class DishSortScreen extends StatefulWidget {
  const DishSortScreen({super.key});

  @override
  State<DishSortScreen> createState() => _DishSortScreenState();
}

class _DishSortScreenState extends State<DishSortScreen> {
  //temporary before implementing backend

  List<Widget> generateSortMethods() {
    List<Widget> result = [];
    for (SortBy sortMethod in locator<Global>().sortBy) {
      result.add(FilterCheckBox(
        label: sortMethod.name,
        options: SearchOptions.sort,
      ));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Container(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              FilterCheckBoxList(
                items: [...generateSortMethods()],
                label: 'Sort By',
              ),
              ApplyButton(
                onPressed: () {
//TODO implement sort methog callback here
                },
              )
            ],
          ),
        )),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  context.router.pop();
                },
              ),
            )),
            Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Dishes Filter',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
