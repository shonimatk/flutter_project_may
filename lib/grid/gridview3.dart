import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview3(),
  ));
}

class gridview3 extends StatelessWidget {
  const gridview3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
        children: List.generate(
            15,
            (index) => Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Column(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
                        height: 80,
                      ),
                      Text(
                        "Olivia",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
