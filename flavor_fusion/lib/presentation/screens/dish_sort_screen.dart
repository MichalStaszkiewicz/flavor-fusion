import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipe_sort/recipe_sort_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/apply_button.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box.dart';
import 'package:flavor_fusion/presentation/widgets/filter_check_box_list.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';
import 'package:flutter/services.dart';
import '../../utility/dialog_manager.dart';
import '../../utility/enums.dart';
import '../../utility/global.dart';
import '../view_models/search_screen/search_screen_view_model.dart';

@RoutePage()
class DishSortScreen extends ConsumerStatefulWidget {
  const DishSortScreen({super.key});

  @override
  DishSortScreenState createState() => DishSortScreenState();
}

class DishSortScreenState extends ConsumerState<DishSortScreen> {
  //temporary before implementing backend

  List<Widget> generateSortMethods() {
    List<Widget> result = [];
    for (SortBy sortMethod in locator<Global>().sortBy) {
      if (sortMethod != SortBy.none) {
        result.add(FilterCheckBox(
          label: locator<Global>().capitalize(sortMethod.name),
          options: SearchOptions.sort,
        ));
      }
    }
    return result;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(recipeSortViewModel.notifier).init();
    });
    super.initState();
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
                  ref.read(recipeSortViewModel).when(
                      initial: () => (),
                      loading: () => (),
                      error: () => (),
                      ready: (sortBy) => ref
                          .read(searchScreenViewModel.notifier)
                          .applySort(sortBy));
                  ref.read(recipeSortViewModel.notifier).confirmSortType();
                  context.router.pop();
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
                  if (ref
                      .read(recipeSortViewModel.notifier)
                      .sortMethodChanged()) {
                    ref.read(recipeSortViewModel.notifier).confirmSortType();
                    context.router.pop();
                  } else {
                    DialogManager.confirmDialog('You did not apply changes',
                        'Do you want to apply them before quit ?', context, () {
                      context.router.pop().then((value) {
                        ref.read(recipeSortViewModel.notifier).rejectSortType();
                        context.router.pop();
                      });
                    }, () {
                      context.router
                          .pop()
                          .then((value) => context.router.pop());
                      ref.read(recipeSortViewModel).when(
                          initial: () => (),
                          loading: () => (),
                          error: () => (),
                          ready: (sortBy) => ref
                              .read(searchScreenViewModel.notifier)
                              .applySort(sortBy));
                      ref.read(recipeSortViewModel.notifier).confirmSortType();
                    });
                  }
                },
              ),
            )),
            Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Dishes Sort',
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
