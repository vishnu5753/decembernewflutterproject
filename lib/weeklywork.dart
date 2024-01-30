import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible:true,
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: registration(),
    ),
  ),
  );

}
class registration extends StateError{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Regist,
    )
  }
}