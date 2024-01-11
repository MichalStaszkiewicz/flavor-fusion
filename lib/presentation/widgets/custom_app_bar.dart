import 'package:auto_route/auto_route.dart';
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
        setAnimationDuration(Duration(milliseconds: 150));
        _sizeAnimationController.forward();
        return _buildAppBarWithAnimation(context);
      } else if (!renderAppBar && animateAppBar) {
        print("Not rendering the app bar with animation.");

        setAnimationDuration(Duration(milliseconds: 150));
        _sizeAnimationController.reverse();
        return _buildAppBarWithAnimation(context);
      } else {
        print("Rendering the app bar instantly.");
        setAnimationDuration(Duration(microseconds: 1));

        _sizeAnimationController.forward();
        return _buildAppBarWithAnimation(context);
      }
    });
  }

  void setAnimationDuration(Duration duration) {
    _sizeAnimationController.duration = duration;
  }

  SizeTransition _buildAppBarWithAnimation(
    BuildContext context,
  ) {
    return SizeTransition(
        sizeFactor: _sizeAnimation,
        axis: Axis.vertical,
        child: _buildAppBar(
          context,
        ));
  }

  SafeArea _buildAppBar(BuildContext context) {
    return SafeArea(
      top: true,
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
