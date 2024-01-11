import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/favorite_search_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



@RoutePage(name: "FavoriteSearchAutoRouter")
class FavoriteSearchWrapper extends StatefulWidget {
  const FavoriteSearchWrapper({super.key});

  @override
  State<FavoriteSearchWrapper> createState() => _FavoriteSearchWrapperState();
}

class _FavoriteSearchWrapperState extends State<FavoriteSearchWrapper> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      navigatorKey: favoriteWrapperNavigatorKey,
    );
  }
}
