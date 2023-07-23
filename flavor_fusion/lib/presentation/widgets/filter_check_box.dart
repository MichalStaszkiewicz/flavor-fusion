import 'package:flavor_fusion/presentation/view_models/recipe_sort/recipe_sort_view_model.dart';
import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../view_models/recipe_filter/recipe_filter_view_model.dart';

class FilterCheckBox extends ConsumerWidget {
  FilterCheckBox({required this.label, required this.options});
  String label;
  SearchOptions options;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (options == SearchOptions.filter) {
      return ref.watch(recipeFilterViewModel).when(
          initial: () => _buildInitialFilter(),
          loading: () => _buildLoadingFilter(),
          error: () => _buildErrorFilter(),
          ready: (filters) => _buildReadyFilter(filters, ref));
    } else {
      return ref.watch(recipeSortViewModel).when(
          initial: () => _buildInitialSort(),
          loading: () => _buildLoadingSort(),
          error: () => _buildErrorSort(),
          ready: (sort) => _buildReadySort(sort, ref));
    }
  }

  Container _buildReadySort(SortBy sort, WidgetRef ref) {
    return Container(
      child: Row(
        children: [
          Checkbox(
              value:
                  sort.name.toLowerCase() == label.toLowerCase() ? true : false,
              onChanged: (value) {
                print("changed");
                if (sort.name.toLowerCase() == label.toLowerCase()) {
                  ref
                      .read(recipeSortViewModel.notifier)
                      .selectSortType(SortBy.none);
                } else {
                  ref
                      .read(recipeSortViewModel.notifier)
                      .selectSortType(locator<Global>().stringToSortBy(label));
                }
              }),
          SizedBox(
            width: 5,
          ),
          Text(label),
        ],
      ),
    );
  }

  Container _buildReadyFilter(List<String> filters, WidgetRef ref) {
    return Container(
      child: Row(
        children: [
          Checkbox(
              value: filters.contains(label) ? true : false,
              onChanged: (value) {
                filters.contains(label)
                    ? ref
                        .read(recipeFilterViewModel.notifier)
                        .removeFilter(label)
                    : ref.read(recipeFilterViewModel.notifier).addFilter(label);
              }),
          SizedBox(
            width: 5,
          ),
          Text(label),
        ],
      ),
    );
  }

  Container _buildLoadingSort() => Container();
  Container _buildInitialSort() => Container();
  Container _buildErrorSort() => Container();
  Container _buildLoadingFilter() => Container();

  Container _buildErrorFilter() => Container();

  Container _buildInitialFilter() {
    return Container(
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          SizedBox(
            width: 5,
          ),
          Text(label),
        ],
      ),
    );
  }
}
