import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: gridview(),
    ),
  ),
  );

}


class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
      children:[
        Container(child: Icon(Icons.construction),color: Colors.green,),
    Container(child: Icon(Icons.call),color: Colors.lightGreen,),
    Container(child: Icon(Icons.card_travel),color: Colors.lightGreenAccent),
    Container(child: Icon(Icons.hotel),color: Colors.red),
    Container(child: Icon(Icons.local_hospital),color: Colors.redAccent),
    Container(child: Icon(Icons.business_center),color: Colors.yellow),
    Container(child: Icon(Icons.bus_alert),color: Colors.black12),
    Container(child: Icon(Icons.all_inbox),color: Colors.blueAccent),
    Container(child: Icon(Icons.catching_pokemon),color: Colors.blue),
    Container(child: Icon(Icons.traffic),color: Colors.amberAccent),

    ]
      ),);

  }

}