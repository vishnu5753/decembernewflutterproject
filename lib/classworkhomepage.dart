import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[300],
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Login Page",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
                bottom: 20,
                top: 60,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "username",
                  labelText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
                top: 10,
                bottom: 30,
              ),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  hintText: "password",
                  labelText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                print("Login Button Pressed");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
