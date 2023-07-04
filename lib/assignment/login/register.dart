import 'package:flutter/material.dart';
import 'package:flutter_project_may/assignment/login/home.dart';
import 'package:flutter_project_may/assignment/login/login.dart';
import 'package:flutter_project_may/assignment/login/splash1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: register()));
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, bottom: 15, left: 50, right: 50),
              child: Text("Register",
                  style:
                      GoogleFonts.openSans(textStyle: TextStyle(fontSize: 50))),
            ),
            SizedBox(height: 15),
            Text("Create an Account,Its free"),
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
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffixIcon: Icon(Icons.visibility_off_sharp)),
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
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffixIcon: Icon(Icons.visibility_off_sharp)),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    shape: StadiumBorder(),
                    backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => splash()));
                },
                child: Text("Sign Up")),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("Do you have an account? Login")),
          ],
        ),
      ),
    );
  }
}
