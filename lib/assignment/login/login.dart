import 'package:flutter/material.dart';
import 'package:flutter_project_may/assignment/login/home.dart';
import 'package:flutter_project_may/assignment/login/register.dart';
import 'package:flutter_project_may/assignment/login/splash1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: login()));
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
              children: [
          Padding(
          padding: const EdgeInsets.only(
              top: 50, bottom: 15, left: 50, right: 50),
          child: Text("Login",
              style:
              GoogleFonts.openSans(textStyle: TextStyle(fontSize: 50))),
        ),
        SizedBox(height: 15),
        Text("Welcome back! Login with your credentials"),
        Padding(
          padding: const EdgeInsets.only(
              left: 50, right: 50, top: 15, bottom: 15),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                hintText: "Email",
                labelText: "Email",
                prefixIcon: Icon(Icons.email)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 15, bottom: 15, right: 50, left: 50),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                hintText: "Password",
                helperText: "Password must be 8 characters",
                prefixIcon: Icon(Icons.visibility_off_sharp),
                suffixIcon: Icon(Icons.visibility_off_sharp)),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(200, 50),
                shape: StadiumBorder(),
                backgroundColor: Colors.green),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => splash()));
        },
        child: Text("Login")),
    TextButton(
    onPressed: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => register()));
    },
    child: Text("Do you have an account? Sign Up")),
    ],
    ),
    ),
    );
    }
}
