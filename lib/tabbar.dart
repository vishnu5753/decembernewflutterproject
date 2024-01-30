import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listviewbuilder.dart';




void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: tabbar(),
  )));
}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return DefaultTabController(length: 2,
    child:Scaffold(
      appBar: AppBar( backgroundColor:Colors.green,
        title: Text("Tabbar"),

        bottom: TabBar(

          indicatorColor: Colors.lightGreenAccent,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.green,

          tabs: [
          Tab(
            child: Text("Lunches"),
      ),
        Tab(
          child: Text("Cart"),
        ),
    Tab(
    child: Text("Calls"),
    ),
          ],),

        ),
      body: TabBarView(children: [
        Container(
        )
      ],),
    ),
  );

  }
}