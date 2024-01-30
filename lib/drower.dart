import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: drowerr(),
  )));
}

class drowerr  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(backgroundColor: Colors.tealAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage("assets/Iconsss/img.png",),fit: BoxFit.fill),
            ),

           accountName: Text("VISHNU"),
              accountEmail: Text("vishnuktkl2002@gmail.com"),
            currentAccountPicture: Image(image: AssetImage("assets/Iconsss/Insta.png"),

            ),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/Iconsss/animalface.png")),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),

            ),
            ListTile(
              leading: Icon(Icons.perm_contact_calendar_sharp),
              title: Text("Contact"),
            ),
            ListTile(
              leading: Icon(Icons.move_to_inbox),
              title: Text("Inbox"),
            ),
           ListTile(
           leading: Icon(Icons.emoji_emotions_rounded),
           title: Text("Send"),
           ), ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}