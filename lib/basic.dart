import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listviewcustm(),
    ),
  ),
  );

}

class Listviewcustm extends StatelessWidget {
  var title=["seperater1","seperater2","seperater3","seperater4","seperater5"];
  var color=["800","700","600","400","200"];
  var colors=[Colors.green,Colors.red,Colors.blue,Colors.pinkAccent,Colors.yellow];
  var phone=["2432434","243423","132434","2434234","242442"];
  var image=["assets/Iconsss/animalface.png","assets/Iconsss/img.png","assets/Iconsss/OIP.jpeg","assets/Iconsss/img.png","assets/Iconsss/img.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom
          (childrenDelegate: SliverChildBuilderDelegate(
                (context,index){
          return Card(
            color:colors[index],
            child: ListTile(
              leading:Image(image: AssetImage("${image[index]}"),),
              title: Text("${title[index]}[index]}"),
              subtitle: Text("$phone[index]"),
              trailing: Icon(Icons.call),
            ),
          );
        },childCount: title.length,
    )),
    );
  }
}