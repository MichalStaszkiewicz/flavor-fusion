import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
abstract class SearchScreenState with _$SearchScreenState {
  factory SearchScreenState.initial() = SearchScreenInitial;
  factory SearchScreenState.loading() = SearchScreenLoading;
  factory SearchScreenState.searchingInProgress() = SearchingInProgress;
  factory SearchScreenState.choosingFilters() = ChoosingFilters;
  factory SearchScreenState.ready() = SearchScreenReady;
  factory SearchScreenState.error() = SearchScreenError;
}
