import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Bottomsheet(),
  ));
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            showSheet(context);
          },
          child: Image.network(
              "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  // leading: Icon(Icons.share),
                  leading: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.teal,
                  ),
                  title: Text("Share"),
                ),
                ListTile(
                  // leading: Icon(Icons.copy),
                  leading: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.pink,
                  ),
                  title: Text("Copy"),
                )
              ],
            ),
          );
        });
  }
}
