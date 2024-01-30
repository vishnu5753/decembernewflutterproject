import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()));
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(color: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage('assets/Iconsss/img.png')),
            title: Text('Ammu'),
            subtitle: Text('1234567789'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color:Colors.yellowAccent,
          child: ListTile(
            leading: Image(image: AssetImage('assets/Iconsss/img.png')),
            title: Text('Arun'),
            subtitle: Text('984645723'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.greenAccent,
          child: ListTile(
            leading: Icon(Icons.contact_phone_sharp),
            title: Text('Appu'),
            subtitle: Text('678336534'),
            trailing: Icon(Icons.call),
          ),
        ),

      ],),
    );

  }
}