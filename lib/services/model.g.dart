// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedItem _$FeedItemFromJson(Map<String, dynamic> json) => FeedItem(
      id: json['id'] as int,
      title: json['title'] as String,
      points: json['points'] as int?,
      user: json['user'] as String?,
      time: json['time'] as int,
      time_ago: json['time_ago'] as String,
      comments_count: json['comments_count'] as int,
      type: json['type'] as String,
      url: json['url'] as String?,
      domain: json['domain'] as String?,
    );

Map<String, dynamic> _$FeedItemToJson(FeedItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'points': instance.points,
      'user': instance.user,
      'time': instance.time,
      'time_ago': instance.time_ago,
      'comments_count': instance.comments_count,
      'type': instance.type,
      'url': instance.url,
      'domain': instance.domain,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      deleted: json['deleted'] as bool?,
      dead: json['dead'] as bool?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'deleted': instance.deleted,
      'dead': instance.dead,
      'url': instance.url,
    };
