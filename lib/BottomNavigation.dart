import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lunches assi.dart';



void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: bottomnav(),
  )));
}
class bottomnav extends StatefulWidget{
  @override
  State<bottomnav> createState() => _bottomnavState();
}
class _bottomnavState extends State<bottomnav> {
  var screen = [
    Text("home"),
    Text("Category"),
    Text("person"),
    Text("cart"),
    Text("Notifications"),
  ];
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        child: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.pink,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (tapindex) {
          setState(() {
            index=tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), label: "Lunches"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_outlined), label: "Account"),
        ],),
    ),
        body: TabBarView(
        children: [
          tabbarrr()
        ],
    ),);


}
}