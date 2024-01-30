import 'package:decembernewflutterproject/listviewbuilder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: classtabar(),
  )));
}
class classtabar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
          title: Text("Tabs Demo"),
            actions: [
              PopupMenuButton(itemBuilder: (context){
                return[
                  PopupMenuItem(child:Text("Settings"),),
                PopupMenuItem(child: Text("Logout")),
                PopupMenuItem(child: Text("Invite")),
                PopupMenuItem(child: Text("Scan")),
                PopupMenuItem(child: Text("Privacy")),
                ];
        }),
        ],
            bottom: TabBar(indicatorColor: Colors.white,
    unselectedLabelColor: Colors.white70,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text("Calls"),icon: Icon(Icons.arrow_outward,
                ),
                ),
                Tab(
                  child: Text(
                    "Missed",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(color: Colors.white, letterSpacing: .5,),
                    ),
                  ),
                ),
                Tab(
                  child: Text("Recieved"),icon: Icon(Icons.call_received),
                ),
    ],),
    ),
    body: TabBarView(
        children: [ listbuilder()
    ],),),);

}
}