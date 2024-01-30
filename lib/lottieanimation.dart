import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: lottieanim(),
  ));
}


class lottieanim extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return Scaffold(
    body:ListView(
      children: [
       // Image(image: AssetImage("assets/Iconsss/arm.jpeg")),
        Lottie.asset("assets/lotti/anim.json"),

      ],
    ),
  );
}
}