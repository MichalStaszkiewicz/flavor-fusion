import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/view_models/recipes/search_bar_model/search_bar_model.dart';
import 'package:flavor_fusion/utility/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationObserver extends AutoRouterObserver {
  NavigationObserver({required this.ref});
  WidgetRef ref;

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
  //  print('New route Popped: ${route.settings.name}');
  //  print("Path After Pop: " + route.data!.route.fullPath);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
   // print('New route pushed: ${route.settings.name}');
   // print("Path After Push: " + route.data!.route.fullPath);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print("URL: " + route.routeInfo.fullPath);
  }
}
