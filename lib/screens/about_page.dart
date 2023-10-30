import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String companyName = "Company Name"; // Şirket adını burada belirtin.
  final String researchInfo = "Who are we?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: Text("About Us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.business, // İstediğiniz bir ikonu burada kullanabilirsiniz
              size: 100,
              color: Colors.red.shade800, // İkonun rengini ayarlayabilirsiniz
            ),
            SizedBox(height: 20),
            Text(
              companyName,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              researchInfo,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
