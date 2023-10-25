import 'package:cost_flutter/menus/home_page.dart';
import 'package:cost_flutter/screens/about_page.dart';
import 'package:cost_flutter/screens/communication_page.dart';
import 'package:cost_flutter/screens/contact_page.dart';
import 'package:cost_flutter/screens/mission_page.dart';
import 'package:cost_flutter/screens/resources_page.dart';
import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'images/logo-white.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text('Home', style: TextStyle(color: Colors.white),),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 25,bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text('About', style: TextStyle(color: Colors.white)),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 25,bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                  ),
                  title: Text('Our Mission', style: TextStyle(color: Colors.white)),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MissionPage()),
                    );
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 25,bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.supervised_user_circle_rounded,
                    color: Colors.white,
                  ),
                  title: Text('Communications', style: TextStyle(color: Colors.white)),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommunicationPage()),
                    );
                  },
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 25,bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text('Resources', style: TextStyle(color: Colors.white)),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResourcesPage()),
                    );
                  },
                ),
              ),

               Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text('Contact Us', style: TextStyle(color: Colors.white)),
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                ),


              ),
            ],
          )
        ],
      ),
    );
  }
}