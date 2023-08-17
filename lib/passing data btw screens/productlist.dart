import 'package:flutter/material.dart';
import 'package:flutter_project_may/passing%20data%20btw%20screens/dummydata.dart';
import 'package:flutter_project_may/passing%20data%20btw%20screens/productdetails.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: productlist(),
      //named routes used in Navigator.pushNamed()
      routes: {
        "details": (context) => Productdetails(),
        // "cart": (context) => ListView(),
      }));
}

class productlist extends StatelessWidget {
  const productlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My products"),
      ),
      body: ListView(
          padding: EdgeInsets.all(15),
          children: products
              .map((e) => ListTile(
                    leading: Image.asset(e["image"]),
                    title: Text(e["name"]),
                    onTap: () => gotodetails(context, e["id"]),
                    //onTap: ()=>Navigator.pushNamed(context, "details",arguments: e["id"]),
                  ))
              .toList()),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details", arguments: id);
  }
}
