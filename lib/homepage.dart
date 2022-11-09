import 'package:flutter/material.dart';
import 'package:hn_app_ordev/pages/news.dart';
import 'package:hn_app_ordev/pages/profile.dart';
import 'package:hn_app_ordev/services/model.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State {
  final pages = [
    NavPageItem('News', '/'),
    NavPageItem('Profile', '/profile'),
  ];

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages.elementAt(_currentTab).name),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: ((value) {
          setState(() {
            _currentTab = value;
          });
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic),
            label: 'Profile',
          ),
        ],
      ),
      body: _currentTab == 0
          ? const NewsPage()
          : ProfilePage(
              pages: pages,
              currentTab: _currentTab,
            ),
    );
  }
}
