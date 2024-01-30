import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: SampleUi(),
    ),
  ),
  );

}
class SampleUi extends StatelessWidget{
  @override
  Widget build(BuildContext  context){
    return Scaffold(
      appBar: AppBar(title: Text("Samplepage"),),
      body:Center(child: Container(child:Text ("MY FIRST WEB PAGE"),)),);
  }
}