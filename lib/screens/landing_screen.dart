import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to the Superpowered App"),
              Image.network('https://picsum.photos/250?image=9'),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
              ElevatedButton(onPressed: (){}, child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }
}
