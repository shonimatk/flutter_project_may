import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: ClipWidgetEx(),
  ));
}

class ClipWidgetEx extends StatelessWidget {
  const ClipWidgetEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Align(
                widthFactor: 6,
                heightFactor: 4,
                child: Image.network(
                    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60%27"),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.network(
                "https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
          ClipOval(
            child: Image.network(
                "https://images.unsplash.com/photo-1542378151504-0361b8ec8f93?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: Center(
                child: Text("hello"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
