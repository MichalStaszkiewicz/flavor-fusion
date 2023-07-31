import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/grocery.dart';
import '../../../data/models/recipe.dart';

part 'states.freezed.dart';

@freezed
abstract class GroceriesState with _$GroceriesState {
  factory GroceriesState.initial() = GroceriesInitial;
  factory GroceriesState.loading() = GroceriesLoading;
  factory GroceriesState.error() = GroceriesError;
  factory GroceriesState.ready(List<Grocery> groceries) = GroceriesReady;
}
