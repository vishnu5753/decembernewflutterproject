import 'package:decembernewflutterproject/listviewbuilder.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class tabbarrr extends StatelessWidget{
  var color=[Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,];





  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Tabbar"),

          bottom: TabBar(
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.teal,
            labelColor: Colors.yellow,
            tabs: [
              Tab(
                child: Text("Lunches",style: GoogleFonts.lato(
            fontSize:25,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
                ),),
              ),
              Tab(
                child: Text("cart",style: GoogleFonts.b612Mono(
                fontSize:25,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),),

        ),
        ],),
        ),
        body:ListView.builder(itemBuilder: (context,index){
    return Row(
      children: [
        Container(color:color[index], height:150,
          width:75,
          child: Column(
            children: [
                Text("1"),
                Text("Tuesday"),
              ],

          ),
        )
      ],
    );
    }
    )
    )
    );
    }
  }