// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageInfoImpl _$$PageInfoImplFromJson(Map<String, dynamic> json) =>
    _$PageInfoImpl(
      hasNextPage: json['hasNextPage'] as bool,
      startCursor: json['startCursor'] as String?,
      endCursor: json['endCursor'] as String?,
    );

Map<String, dynamic> _$$PageInfoImplToJson(_$PageInfoImpl instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'startCursor': instance.startCursor,
      'endCursor': instance.endCursor,
    };
