import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Navigation Bar'),
      ),
      body: Center(
        child: Text('Page ${_currentIndex + 1}'),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.search, Icons.favorite, Icons.person],
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
