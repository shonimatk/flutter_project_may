import 'package:flutter/material.dart';

import 'dummydata.dart';

class Productdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product =
        products.firstWhere((mapfromlist) => mapfromlist["id"] == id);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Single product"),
      ),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                product["image"],
                height: 200,
                width: 200,
              ),
              Text(
                product["name"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(product["description"]),
              Text(
                "${product["price"]}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "${product["rating"]}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
