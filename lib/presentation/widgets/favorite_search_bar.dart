import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/screens/wrapper/recipe_search_wrapper.dart';
import 'package:flavor_fusion/presentation/view_models/favorite/favorite_view_model.dart';
import 'package:flavor_fusion/strings.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/dialog_manager.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_models/recipe_filter/recipe_filter_view_model.dart';

class FavoriteSearchBar extends ConsumerStatefulWidget {
  const FavoriteSearchBar({super.key});

  @override
  ConsumerState<FavoriteSearchBar> createState() => FavoriteSearchBarState();
}

class FavoriteSearchBarState extends ConsumerState<FavoriteSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  var searchOpened = false;

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  Widget renderAppBar(BuildContext context) {
    var router = context.router;

    if (router.currentPath.contains(RouteName.favoriteRecipeFilter)) {
      return _buildFavoriteFilterAppBar();
    } else {
      return _buildSearchBar(context);
    }
  }

  Container _buildFavoriteFilterAppBar() => Container(
        child: Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (ref
                          .read(recipeFilterViewModel.notifier)
                          .sortMethodChanged() &&
                      ref
                          .read(recipeFilterViewModel.notifier)
                          .sortMethodChanged()) {
                    ref.read(recipeFilterViewModel.notifier).confirmChanges();
                    context.router.replace(FavoriteRecipesRoute());
                  } else {
                    DialogManager.confirmDialog('You did not apply changes',
                        'Do you want to apply them before quit ?', context, () {
                      context.router.pop().then((value) {
                        context.router.replace(FavoriteRecipesRoute());
                        ref
                            .read(recipeFilterViewModel.notifier)
                            .rejectChanges();
                      });
                    }, () {
                      context.router.pop().then((value) =>
                          context.router.replace(FavoriteRecipesRoute()));
                      ref.read(recipeFilterViewModel).when(
                          initial: () => (),
                          loading: () => (),
                          error: () => (),
                          ready: (sortBy, minTime, minCal) => ref
                              .read(favoriteViewModel.notifier)
                              .apply(sortBy, minTime, minCal));
                      ref.read(recipeFilterViewModel.notifier).confirmChanges();
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
                    'Dishes Filter',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )),
            Expanded(child: Container())
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Center(child: renderAppBar(context));
  }

  Container _buildSearchBar(BuildContext context) {
    return Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  searchOpened = true;
                  setState(() {});
                },
                child: Container(child: Icon(Icons.search))),
            AnimatedSwitcher(
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                duration: Duration(milliseconds: 150),
                child: Container(
                    key: ValueKey(searchOpened),
                    child: searchOpened
                        ? _buildSearchBarFocused(context)
                        : _buildAppBarTitle())),
            GestureDetector(
                onTap: () {
                  context.router.push(DishFilterPanel());
                },
                child: Container(child: Icon(Icons.settings)))
          ],
        ));
  }

  Container _buildAppBarTitle() {
    return Container(
        width: 250, child: Center(child: Text('Favorite Recipes')));
  }

  Container _buildSearchBarFocused(BuildContext context) {
    _focusNode.requestFocus();

    return Container(
      width: 250,
      child: TextField(
        focusNode: _focusNode,
        controller: _controller,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          hintText: AppStrings.favoriteSearchHint,
          hintStyle: Theme.of(context).textTheme.labelMedium,
          border: const OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          disabledBorder: const OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        onSubmitted: (search) {
          searchOpened = false;
          setState(() {});
        },
        onChanged: (text) {},
        onTapOutside: (ptr) {
          searchOpened = false;
          setState(() {});
        },
      ),
    );
  }
}
