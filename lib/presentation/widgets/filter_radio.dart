import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/global.dart';
import '../../utility/service_locator.dart';
import '../view_models/recipe_filter/recipe_filter_view_model.dart';

class FilterRadio extends ConsumerWidget {
  FilterRadio(
      {required this.label,
      required this.selectedMethod,
      required this.groupValue});
  SortBy selectedMethod;
  String label;
  String groupValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(recipeFilterViewModel).when(
        initial: () => _buildInitialFilter(),
        loading: () => _buildLoadingFilter(),
        error: () => _buildErrorFilter(),
        ready: (sortBy, minTime, minCal) => _buildReadyFilter(ref));
  }

  Container _buildReadyFilter(WidgetRef ref) {
    return Container(
      child: Row(
        children: [
          Radio(
              groupValue: ref.read(recipeFilterViewModel.notifier).selected(
                    selectedMethod,
                  ),
              value: selectedMethod,
              onChanged: (value) {
                ref
                    .read(recipeFilterViewModel.notifier)
                    .selectCheckBox(selectedMethod);
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
