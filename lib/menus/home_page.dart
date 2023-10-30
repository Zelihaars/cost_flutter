import 'package:cost_flutter/components/app_bar.dart';
import 'package:cost_flutter/components/drawer_bar.dart';
import 'package:cost_flutter/menus/notification.dart';
import 'package:cost_flutter/screens/news_page.dart';
import 'package:cost_flutter/screens/about_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const NewsPage(),
    NotificationItem(
      title: "Notification Title ",
      content: "Notification Content ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: MyAppBar(),
        drawer: DrawerBar(),
        body: SingleChildScrollView(
          child: _pages[_selectedIndex],
        ));
  }
}
