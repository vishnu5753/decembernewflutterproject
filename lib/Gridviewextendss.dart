import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridviewextendss(),
    );
  }));
}


class Gridviewextendss extends StatelessWidget{
  var icon = [
    Icons.home_filled,
    Icons.email_rounded,
    Icons.alarm_add,
    Icons.wallet_giftcard,
    Icons.backup_outlined,
    Icons.book,
    Icons.camera_alt_outlined,
    Icons.person,
    Icons.print_outlined,
    Icons.phone,
    Icons.note,
    Icons.music_note_outlined
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 120,
      children:List.generate(8, (index){
        return Card(
        child: Column(
        children: [
          Icon(icon[index]),
          Text("flutter"),
    ],
        )
        );
    }
    ),)
    );
  }

}