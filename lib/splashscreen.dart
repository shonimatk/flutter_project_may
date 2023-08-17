import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginPage.dart';
import 'package:flutter_project_may/hivecrud/hivemain.dart';

void main() {
  //to run an program //runapp to attach the widget
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //default theme of app (multiplatform support)
    home:
        CRUD_HIVE(), //initial screen of our app, home must be a widget it may be stateless or statefull
  ));
}

class Splashpage extends StatefulWidget {
  @override
  State<Splashpage> createState() =>
      _SplashpageState(); //create and initial state for the screen
}

class _SplashpageState extends State<Splashpage> {
  //initial state of splpashpage
  //there are two functionalities in states class
  // initState(){} and setState(){}
  // initState(){} -> what will happn when the app or screen is loaded initially
  // setState(){} -> what change will occur on a widget or screen
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Colors.green, //to add asingle color
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue,
        Colors.lightBlue,
        Colors.lightBlueAccent,
        Colors.blueAccent,
      ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn1.iconfinder.com/data/icons/bootstrap-vol-2/16/eye-256.png",
              height: 200,
              width: 200,
            ),
            Text(
              "My App",
              style:
                  GoogleFonts.dancingScript(fontSize: 70, color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }
}
