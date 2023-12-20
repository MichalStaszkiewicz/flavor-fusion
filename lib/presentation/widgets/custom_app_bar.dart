import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class CustomAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  CustomAppBar({required this.child});

  Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomAnimatedAppBar();

  @override
  Size get preferredSize => Size(double.infinity, 66);
}

class _CustomAnimatedAppBar extends ConsumerState<CustomAppBar>
    with TickerProviderStateMixin {
  late AnimationController _sizeAnimationController;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    _sizeAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));

    _sizeAnimation =
        CurvedAnimation(parent: _sizeAnimationController, curve: Curves.linear);

    super.initState();
  }

  @override
  void dispose() {
    _sizeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(searchBarModel).maybeWhen(orElse: () {
      return Container();
    }, ready: (expanded, renderAppBar, animateAppBar) {
      if (renderAppBar && animateAppBar) {
        print("Rendering the app bar with animation.");
        _sizeAnimationController.forward();
        return _buildAppBarWithAnimation(context, true);
      } else if (!renderAppBar && animateAppBar) {
        print("Not rendering the app bar with animation.");
        _sizeAnimationController.reverse();
        return _buildAppBarWithAnimation(context, false);
      } else {
        print("Rendering the app bar instantly.");
        _sizeAnimationController.forward();
        return _buildAppBar(context, true);
      }
    });
  }

  SizeTransition _buildAppBarWithAnimation(
      BuildContext context, bool safeAreaTop) {
    return SizeTransition(
        sizeFactor: _sizeAnimation,
        axis: Axis.vertical,
        child: _buildAppBar(context, safeAreaTop));
  }

  SafeArea _buildAppBar(BuildContext context, bool safeAreaTop) {
    return SafeArea(
      top: safeAreaTop,
      child: Theme(
        data: context.theme,
        child: Container(
          color: context.theme.appBarTheme.backgroundColor,
          height: widget.preferredSize.height,
          child: widget.child,
        ),
      ),
    );
  }
}
