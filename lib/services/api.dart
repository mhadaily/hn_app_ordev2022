import 'dart:async';
import 'dart:convert';

import 'package:hn_app_ordev/services/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final _client = http.Client();

  Future<List<FeedItem>> getLatestNews() async {
    final url = Uri.parse('https://api.hnpwa.com/v0/news/1.json');
    final response = await _client.get(url);
    final decoded = jsonDecode(response.body);
    return decoded.map<FeedItem>((item) => FeedItem.fromJson(item)).toList();
  }

  Future<Item> getArticle(int id) async {
    final url = Uri.parse('https://api.hnpwa.com/v0/item/$id.json');
    final response = await _client.get(url);
    final decoded = jsonDecode(response.body);
    return Item.fromJson(decoded);
  }
}
