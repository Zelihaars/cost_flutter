import 'package:cost_flutter/components/app_bar.dart';
import 'package:cost_flutter/components/bottom_nav_bar.dart';
import 'package:cost_flutter/components/drawer_bar.dart';
import 'package:cost_flutter/menus/home_page.dart';
import 'package:cost_flutter/menus/login_page.dart';
import 'package:cost_flutter/screens/about_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar:MyAppBar(),

        drawer: DrawerBar(),
        body:SingleChildScrollView(
          child: Center(
            child:Text("Contact us"),
          )

        )


    );
  }
}
