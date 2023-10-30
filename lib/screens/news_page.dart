import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> fakeNews = [
    "Başlık 1",
    "Başlık 2",
    "Başlık 3",
    "Başlık 4",
    "Başlık 5",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        NewsCard(),
        NewsCard(),
        NewsCard(),
      ]),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4, // Card'ın yüksekliği
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15), // Card'ın köşelerinin yuvarlaklığı
        ),
        margin: EdgeInsets.all(16), // Card'ın kenar boşluğu
        child: Container(
          height: MediaQuery.of(context).size.height *
              0.65, // Ekranın %65'ini kaplayacak
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Başlık',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Card içeriği buraya gelecek.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
