import 'package:flutter/material.dart';
import 'package:hn_app_ordev/services/model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.pages,
    required int currentTab,
  })  : _currentTab = currentTab,
        super(key: key);

  final List<NavPageItem> pages;
  final int _currentTab;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        pages.elementAt(_currentTab).name,
      ),
    );
  }
}
