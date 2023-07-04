import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/Homepage.dart';
import 'package:flutter_project_may/LoginPage.dart';
import 'package:flutter_project_may/splashscreen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Regiteration(),
  ));
}

class Regiteration extends StatefulWidget {
  const Regiteration({Key? key}) : super(key: key);

  @override
  State<Regiteration> createState() => _RegiterationState();
}

class _RegiterationState extends State<Regiteration> {
  final formkey = GlobalKey<FormState>();
  var confirmpass;
  bool showpwd = true;
  bool showpwd1 = true; //to store

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RgisterationPage"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "RegisterationPage",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Enter a valid email/field must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpwd,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd) {
                              showpwd = false;
                            } else {
                              showpwd = true;
                            }
                          });
                        },
                        icon: Icon(showpwd == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),
                    border: OutlineInputBorder(),
                    hintText: "Password"),
                validator: (password) {
                  confirmpass = password;
                  if (password!.isEmpty || password.length >6) {
                    return "Password must be greater than 6 characters/ must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: showpwd1,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd1) {
                              showpwd1 = false;
                            } else {
                              showpwd1 = true;
                            }
                          });
                        },
                        icon: Icon(showpwd1 == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password"),
                validator: (cpassword) {
                  if (cpassword != confirmpass || cpassword!.isEmpty) {
                    return "Password is missmatch/empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var isValid = formkey.currentState!.validate();
                  if (isValid == true) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  }
                },
                child: const Text("RegistrationPage"))
          ],
        ),
      ),
    );
  }
}
