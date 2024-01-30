import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: newhome(),));
}

class newhome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children: [
        Card(color: Colors.amberAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/Iconsss/Insta.png"),),
            title: Text("VISHNU"),
            subtitle:Text("9633617532"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.yellow,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: (AssetImage("assets/Iconsss/Insta.png")),),
            title: Text("AMMU"),
            subtitle:Text("9622617532"),
            trailing: Icon(Icons.man),
          ),
        ),
        Card(color: Colors.lightGreenAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/Iconsss/img.png"),),
            title: Text("Arun"),
            subtitle:Text("9633617511"),
            trailing: Icon(Icons.home),
          ),
        ),
        Card(color: Colors.pinkAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/Iconsss/blacklocation.png"),),
            title: Text("Appu"),
            subtitle:Text("9336175452"),
            trailing: Icon(Icons.backspace),
          ),
        ),






      ],),
    );
  }
}