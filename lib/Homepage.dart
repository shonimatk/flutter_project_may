import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Homepage(),));
}

class Homepage extends StatefulWidget {

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Welcome User", style: GoogleFonts.dancingScript(fontSize: 100,color: Colors.cyan))),
    );
  }
}
