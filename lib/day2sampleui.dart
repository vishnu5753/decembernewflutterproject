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
      appBar: AppBar(foregroundColor: Colors.yellow,
      backgroundColor: Colors.red,
      title:Text("sample page"),
      ),
      body:Container(color: Colors.blueAccent,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.ac_unit_sharp,size:50,),
            Text("Flutter",
              style: TextStyle(color: Colors.teal,fontSize: 50,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),
            )
          ],
        ),)
      ),);
  }
}