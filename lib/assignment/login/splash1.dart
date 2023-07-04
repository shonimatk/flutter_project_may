import 'package:flutter/material.dart';
import 'package:flutter_project_may/assignment/login/login.dart';
import 'package:flutter_project_may/assignment/login/register.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello There!",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(fontSize: 30),
                )),
            SizedBox(height: 12),
            Text(
                "Automatic identify verification which enable you to verify your identity"),
            Image.network(
                "https://cdn3.iconfinder.com/data/icons/logos-brands-3/24/logo_brand_brands_logos_app_store-256.png",
                height: 500,
                width: 500),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 12, left: 50, right: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Colors.green,
                      shape: StadiumBorder()),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text("Login")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 12, bottom: 50, left: 50, right: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.green),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => register()));
                  },
                  child: Text("Sign Up")),
            )
          ],
        ),
      ),
    );
  }
}
