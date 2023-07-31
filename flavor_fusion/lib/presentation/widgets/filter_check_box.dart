import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../view_models/recipe_filter/recipe_filter_view_model.dart';

class FilterCheckBox extends ConsumerWidget {
  FilterCheckBox({
    required this.label,
  });
  String label;

  bool selected(
    SortBy sortBy,
    List<String> filters,
  ) {
    if (label.toLowerCase() == sortBy.name.toLowerCase()) {
      return true;
    }
    for (String filter in filters) {
      if (label.toLowerCase() == filter.toLowerCase()) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(recipeFilterViewModel).when(
        initial: () => _buildInitialFilter(),
        loading: () => _buildLoadingFilter(),
        error: () => _buildErrorFilter(),
        ready: (filters, sortBy) => _buildReadyFilter(sortBy, filters, ref));
  }

  Container _buildReadyFilter(
      SortBy sortBy, List<String> filters, WidgetRef ref) {
    return Container(
      child: Row(
        children: [
          Checkbox(
              value: selected(sortBy, filters),
              onChanged: (value) {
                ref.read(recipeFilterViewModel.notifier).selectCheckBox(label);
              }),
          SizedBox(
            width: 5,
          ),
          Text(label),
        ],
      ),
    );
  }

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
