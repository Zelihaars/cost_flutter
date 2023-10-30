import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 12.0),
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
      actions: <Widget>[
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
            child: Image.asset('assets/images/logo/logo-white.png',
                color: Colors.red.shade900),
          ),
        ),
      ],
    );
  }
}
