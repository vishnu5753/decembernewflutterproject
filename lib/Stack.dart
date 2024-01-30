import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackeg2(),
    );
  }));
}

class Stackeg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
        children: [
          Container(color: Colors.white,height: double.infinity,width: double.infinity,
            child:Padding(
        padding:const EdgeInsets.only(top:230,left:220),
            child: ListView(
    children: [
      Text("data"),
    ],
    ),
            ),),
          Positioned(child:ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
            child: Container(
              color: Colors.black12,
              height: 150,
              width: 500,
            ),
          Positioned(child:ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(color: Colors.blue,
    child:Image(image:AssetImage(("assets/Iconsss/arm.jpeg"),fit: BoxFit.fill,),),
    ),
              height: 100,
              width: 100,
            ),
            top: 110,
            left: 200,),
    ),),],],),),);
  }
}