import 'package:flutter/material.dart';
import 'package:flutter_project_may/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterationPage(),
  ));
}

class RegisterationPage extends StatelessWidget {
  const RegisterationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registeration Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/icons/5210074_game_intertainment_pacman_icon.png",
            height: 100,
            width: 100,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 12),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 50, right: 50, top: 12, bottom: 12),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: Icon(Icons.visibility)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 50, right: 50, top: 12, bottom: 12),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Confirm password",
                    labelText: "Confirm password",
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    suffixIcon: Icon(Icons.visibility))),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Sign up"),
          ),
          TextButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()));
          }, child: Text("Already have an account?login"))

        ],
      ),
    );
  }
}
