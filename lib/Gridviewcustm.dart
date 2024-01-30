import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridviewwcutm(),
    ),
  ),
  );

}



class Gridviewwcutm extends StatelessWidget{
  var image=["assets/Iconsss/animalface.png","assets/Iconsss/img.png","assets/Iconsss/OIP.jpeg","assets/Iconsss/img.png","assets/Iconsss/img.png"];
  var title=["fb","fb","fb","fb","fb"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    childrenDelegate: SliverChildBuilderDelegate((context, index){
      return Card(
      child: Column(
      children: [
        Image(image: AssetImage(image[index]),height: 80,width: 80,),
        Text(title[index]),

    ],
      ),
      );
    }
    ,childCount: image.length)),
    );
  }
}