import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: stageredgrid(),
  )));
}
class stageredgrid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:StaggeredGrid.count (
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 3,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Container(child: Image(image: AssetImage("assets/Iconsss/Insta.png"),height: 100,width: 100,),

                ),),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Container(child: Image(image: AssetImage("assets/Iconsss/blacklocation.png"),height: 100,width: 100,),
                ),),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Container(child:Image(image: AssetImage("assets/Iconsss/Insta.png"),height: 100,width: 100,),
                ),),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: Container(child:Image(image: AssetImage("assets/Iconsss/blacklocation.png"),height: 100,width: 100,),
                ),),

            ]
        ),
      );


  }

}

