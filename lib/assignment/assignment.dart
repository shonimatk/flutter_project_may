import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfirstpage(),
  ));
}

class Myfirstpage extends StatelessWidget {
  const Myfirstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1571575173700-afb9492e6a50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80"),
              fit: BoxFit.cover)),
      child: Center(
        child: Container(alignment: Alignment.centerRight,
          child: Column(

            children: [
              const Image(
                  image: NetworkImage(
                      "https://cdn4.iconfinder.com/data/icons/fruits-and-veggies-2/180/fruits-and-veggies-icons_kiwi-512.png"),
                  height: 100,
                  width: 100),
              Text(
                "Fresh Foods",
                style:
                    GoogleFonts.dancingScript(fontSize: 70, color: Colors.black),
              ),
              Text(
                "Tasty & Healthy",
                style: GoogleFonts.nunito(fontSize: 30, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
