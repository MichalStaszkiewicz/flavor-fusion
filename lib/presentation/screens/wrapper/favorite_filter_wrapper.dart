import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "FavoriteFilterAutoRouter")
class FavoriteFilterWrapper extends StatefulWidget {
  const FavoriteFilterWrapper({super.key});

  @override
  State<FavoriteFilterWrapper> createState() => _FavoriteFilterWrapperState();
}

class _FavoriteFilterWrapperState extends State<FavoriteFilterWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
