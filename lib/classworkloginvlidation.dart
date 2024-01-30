import 'package:decembernewflutterproject/Newhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _HomeState();
}

class _HomeState extends State<loginpage> {
  GlobalKey<FormState>formley=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[300],
        child: Form(
          key:formley,
          child:Column(
          children:[
            SizedBox(
              height: 70,
            ),
            Text(
              "Login Page", style: TextStyle(color: Colors.red, fontSize: 30,fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60,bottom: 20, top: 60),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Username",
                    labelText: "Name"),
                validator:(username) {
                  if (username!.isEmpty || !username.contains("@") ||    !username.contains(".")) {

                    return "please enter the valid email";
                  }
                  else {
                    return null;
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 10, bottom: 30),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter:'*' ,
                decoration: InputDecoration(...),
                  validator:(password){
                  if(password!.isEmpty || password.length<8){
                    return "Enter valid Password";
              }
                  else{
    return null;
    }
    },
    ),
    ),
    SizedBox(
    height: 30,
    ),
    ElevatedButton(
    onPressed:() {
      final valid=formley.currentState!.validate();
      if(valid){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>newhome()));
    }
    },
    child: Text("Login"),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,foregroundColor: Colors.green),
    ),

    TextButton(onPressed:() {},
    child: Text("Not a user ! create a new account")),
    ],
    ),
    ),
      ),
    );
  }
}














