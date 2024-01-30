import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: Gridviewextend(),
  )));
}

class Gridviewextend extends StatelessWidget{
  var Iconss=[Icons.access_alarm_sharp,Icons.comment,Icons.connecting_airports,Icons.confirmation_num];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 120,
    children: List.generate(4, (index){
        return Card(
          child: Column(
            children: [
              Icon(Iconss[index]),
              Text("flutter"),
            ],
          ),

        );
    }
    ),),);
  }

}

