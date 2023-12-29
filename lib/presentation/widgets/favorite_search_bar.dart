import 'package:flavor_fusion/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FavoriteSearchBar extends StatefulWidget {
  const FavoriteSearchBar({super.key});

  @override
  State<FavoriteSearchBar> createState() => _FavoriteSearchBarState();
}

class _FavoriteSearchBarState extends State<FavoriteSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  var searchOpened = false;

  @override
  void dispose() {
    // _focusNode.dispose();
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
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
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
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
                Container(child: Icon(Icons.settings))
              ],
            )));
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
          hintText: favoriteSearchHint,
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
