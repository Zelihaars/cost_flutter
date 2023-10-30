import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String content;

  const NotificationItem({
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15, // Sayfanın %15'i
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sağ üst köşede bir ikon ekleyin
          Icon(
            Icons.notifications, // İstediğiniz bir ikonu kullanabilirsiniz
            size: 20,
            color: Colors.red, // İkonun rengini ayarlayabilirsiniz
          ),
          const SizedBox(width: 12), // İkon ile metin arasında boşluk ekleyin
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  content,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
