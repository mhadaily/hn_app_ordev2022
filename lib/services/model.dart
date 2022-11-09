import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class FeedItem {
  const FeedItem({
    required this.id,
    required this.title,
    this.points,
    this.user,
    required this.time,
    required this.time_ago,
    required this.comments_count,
    required this.type,
    this.url,
    this.domain,
  });

  final int id;
  final String title;
  final int? points;
  final String? user;
  final int time;
  final String time_ago;
  final int comments_count;
  final String type;
  final String? url;
  final String? domain;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);

  Map<String, dynamic> toJson() => _$FeedItemToJson(this);
}

@JsonSerializable()
class Item {
  const Item({
    required this.id,
    required this.title,
    required this.content,
    this.deleted,
    this.dead,
    this.url,
  });

  final int id;
  final String title;
  final String content;
  final bool? deleted;
  final bool? dead;
  final String? url;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

class NavPageItem {
  NavPageItem(this.name, this.path);
  final String name;
  final String path;
}
