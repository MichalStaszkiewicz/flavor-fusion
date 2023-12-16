import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info.g.dart';
part 'page_info.freezed.dart';

@freezed
class PageInfo with _$PageInfo {
  factory PageInfo(
      {required bool hasNextPage,
      required String? startCursor,
      required String? endCursor}) = _PageInfo;
  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
