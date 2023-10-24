import 'package:cost_flutter/components/drawer_bar.dart';
import 'package:cost_flutter/menus/login_page.dart';
import 'package:cost_flutter/screens/abaout_page.dart';
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
    const AboutPage(),
    const LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Padding(
                padding:  EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          actions:  <Widget> [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
                print('Arama butonuna basıldı');
              },
            ),
            GestureDetector(
              onTap: () {
                print('Resme tıklandı');
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('images/logo-white.png',color: Colors.red.shade900),
              ),
            ),

          ],

      ),

      drawer: DrawerBar(),
      body:SingleChildScrollView(
        child: _pages[_selectedIndex],
      )


    );
  }
}

