import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: GridViewExample(),
      ),
    ),
  );
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          gridItem('Person', 'assets/Iconsss/whatsappchat.jpeg'),
          gridItem('Home', 'assets/Iconsss/img.png'),
          gridItem('Person', 'assets/Iconsss/img.png'),
          gridItem('Injury', 'assets/Iconsss/img.png'),
          gridItem('Home', 'assets/Iconsss/img.png'),
          gridItem('Person', 'assets/Iconsss/img.png'),
          gridItem('Bus Alert', 'assets/Iconsss/img.png'),
          gridItem('Inbox', 'assets/Iconsss/img.png'),
          gridItem('Pokemon', 'assets/Iconsss/img.png'),
          gridItem('Traffic', 'assets/Iconsss/img.png'),
        ],
      ),
    );
  }

  Widget gridItem(String text, String imageUrl) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(text, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
