import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: "DishDetailsAutoRouter")
class DishDetailsWrapper extends StatefulWidget {
  const DishDetailsWrapper({super.key});

  @override
  State<DishDetailsWrapper> createState() =>
      _DishDetailsWrapperState();
}

class _DishDetailsWrapperState extends State<DishDetailsWrapper> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
