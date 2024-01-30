import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'day2sampleui.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Newui(),
    ),
  ),
  );

}
class Newui extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor:Colors.red,
        title:Text("MY APP PAGE"),
    ),
    body: Container(color:Colors.blue,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww"),fit: BoxFit.cover)),
      child:Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(image: AssetImage("assets/Iconsss/animalface.png"),height:100,width: 100,),
    Text("SHOPPING",
    style: TextStyle(color: Colors.pink,fontSize: 60,fontWeight: FontWeight.w200,fontStyle: FontStyle.italic),
    ),
    ],
    )
      
    ),),);
  }

}
