import 'package:flutter/material.dart';
import 'package:hn_app_ordev/homepage.dart';
import 'package:hn_app_ordev/pages/item.dart';
import 'package:hn_app_ordev/pages/news.dart';
import 'package:hn_app_ordev/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: {
        '/': (context) => const Homepage(),
        '/item': (context) => const ItemPage(),
      },
      initialRoute: '/',
    );
  }
}
