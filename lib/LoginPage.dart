import 'package:flutter/material.dart';
import 'package:flutter_project_may/main.dart';
import 'package:flutter_project_may/registerationpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  String username = "admin@123";
  String password = "abc123";

  final uname = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/5210074_game_intertainment_pacman_icon.png",
              height: 100, width: 100),
          Padding(
            padding:
                const EdgeInsets.only(top: 50, bottom: 12, left: 50, right: 50),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Username",
                  helperText: "Username must be an email",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, right: 50, bottom: 12, top: 12),
            child: TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Password",
                  helperText: "Password must be 8 characters",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: Icon(Icons.visibility)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (uname.text != "" && pass.text != "") {
                  if (uname.text == username && pass.text == password) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Firstpage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Fields must not be empty"),
                      backgroundColor: Colors.red,
                    ));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Email/Password is incorrect"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegisterationPage()));
              },
              child: Text("Not a User...Register here..."))
        ],
      ),
    );
  }
}
