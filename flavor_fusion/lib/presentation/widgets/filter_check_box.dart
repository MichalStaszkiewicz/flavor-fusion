import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/utility/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_models/recipe_filter/recipe_filter_view_model.dart';

class FilterCheckBox extends ConsumerWidget {
  FilterCheckBox({required this.label, required this.options});
  String label;
  SearchOptions options;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(recipeFilterViewModel).when(
        initial: () => _buildInitial(),
        loading: () => _buildLoading(),
        error: () => _buildError(),
        ready: (filters) => _buildReady(filters, ref));
  }

  Container _buildReady(List<String> filters, WidgetRef ref) {
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

  Container _buildLoading() => Container();

  Container _buildError() => Container();

  Container _buildInitial() {
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
