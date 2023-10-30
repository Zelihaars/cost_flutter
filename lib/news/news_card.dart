// import 'package:flutter/material.dart';

// class NewsCard extends StatelessWidget {
//   const NewsCard({
//     Key? key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         margin: EdgeInsets.all(16.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.6,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10.0),
//                   topRight: Radius.circular(10.0),
//                 ),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       'assets/images/homepage_images/european_researchers.jpg'),
//                   fit: BoxFit.cover, // Resmi ekran boyutuna sığdır
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Haber Başlığı",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "Haber Detayları",
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
