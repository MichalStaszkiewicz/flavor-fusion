import 'package:flavor_fusion/presentation/view_models/search_screen/search_screen_view_model.dart';
import 'package:flavor_fusion/presentation/widgets/dish_item_widget.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/recipe.dart';
import '../../utility/service_locator.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final data = ref.watch(searchScreenViewModel.notifier);
      data.loadRecipies();
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  TextStyle getTextStyle(Set<MaterialState> states, BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Colors.grey.withOpacity(0.9));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchScreenViewModel);

    return Container(
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
                child: SearchBar(
              onChanged: (userSearchText) {
                ref
                    .read(searchScreenViewModel.notifier)
                    .searchRecipies(userSearchText);
              },
              controller: _searchController,
              hintText: "Search dish name...",
              hintStyle: MaterialStateProperty.resolveWith(
                  (states) => getTextStyle(states, context)),
              leading: Icon(
                Icons.search,
              ),
            )),
          )),
          state.when(
              initial: () {
                return _buildInitialModel();
              },
              loading: () => _buildLoadingModel(),
              searchingInProgress: () => _buildSearchingInProgress(),
              ready: (recipies) =>
                  _buildReadyModel(context, recipies, _searchController),
              error: () => _buildErrorModel(),
              choosingFilters: () => Container()),
        ],
      ),
    );
  }

  Container _buildErrorModel() => Container();

  Center _buildInitialModel() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Center _buildLoadingModel() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Expanded _buildReadyModel(BuildContext context, List<Recipe> recipes,
      TextEditingController searchBarController) {
    return Expanded(
      flex: 8,
      child: Container(
          child: Column(
        children: [
          _buildSearchScreenFilterOptionsBar(context, searchBarController),
          _buildRecipiesListView(recipes),
        ],
      )),
    );
  }

  Expanded _buildSearchingInProgress() {
    return Expanded(
      child: Container(
        child: Column(
          children: [Expanded(flex: 8, child: Container())],
        ),
      ),
    );
  }

  Expanded _buildRecipiesListView(List<Recipe> recipes) {
    return Expanded(
        flex: 7,
        child: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: recipes.length,
              itemBuilder: (context, index) => DishItemWidget(
                    calories: recipes[index].calories.round().toString(),
                    name: recipes[index].label,
                    time: recipes[index].totalTime.toString(),
                  )),
        ));
  }

  Expanded _buildSearchScreenFilterOptionsBar(
      BuildContext context, TextEditingController searchBarController) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            searchBarController.clear();
            locator<AppRouter>().push(DishSortRoute());
          },
          child: Chip(
            side: BorderSide(color: Colors.transparent),
            elevation: 2,
            shadowColor: Colors.grey.withOpacity(1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            label: const Text(
              'Sort',
            ),
            labelStyle: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            searchBarController.clear();
            locator<AppRouter>().push(DishFilterRoute());
          },
          child: Chip(
            side: BorderSide(color: Colors.transparent),
            elevation: 2,
            shadowColor: Colors.grey.withOpacity(1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            labelStyle: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.black),
            label: Text('Filter'),
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    ));
  }
}
