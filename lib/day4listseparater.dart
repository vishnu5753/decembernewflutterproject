import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: listseperater(),
    ),
  ),
  );

}

class listseperater extends StatelessWidget{
  var title=["anu","ram","balu","arun","amal"];
  var color=["800","700","600","400","200"];
  var colors=[Colors.green,Colors.red,Colors.blue,Colors.pinkAccent,Colors.yellow];
  var Phone=["2432434","243423","132434","2434234","242442"];
  var image=["assets/Iconsss/animalface.png","assets/Iconsss/img.png","assets/Iconsss/OIP.jpeg","assets/Iconsss/img.png","assets/Iconsss/img.png"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
          title: Text("${title[index]}"),
          subtitle: Text("${Phone[index]}"),
          trailing: Icon(Icons.call),
        ));
    },

      separatorBuilder: (context,index){
    return Divider(
    thickness: 5,
    color: Colors.red,
    );
    },itemCount: 5),
        );
    }

  }
