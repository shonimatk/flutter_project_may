import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 40,mainAxisSpacing: 20),
        item
        children: List.generate(
            10,
            (index) => Card(
                  child: Center(
                    child: Image.network(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
                  ),
                )),
      ),
    );
  }
}
