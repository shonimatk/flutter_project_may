import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
void main(){
  runApp(MaterialApp(home: home(),debugShowCheckedModeBanner: false));
}
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}
