import 'package:flutter/material.dart';
import 'package:flutter_project_may/assignment/contact.dart';
import 'package:flutter_project_may/practice/watsppcall.dart';
import 'package:flutter_project_may/practice/whatsapp.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarEx(),
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
  ));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred messeges")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              })
            ],
            bottom: TabBar(tabs: [
              Icon(Icons.people),
              Text("Chats"),
              Text("Status"),
              Text("Calls")
            ]),
          ),
          body: TabBarView(children: [
            Callbox(),
            chats(),
            Homepage(),
            Callbox(),
            // Center(child: Text("community"),),
            // Center(child: Text("chats"),),
            // Center(child: Text("status"),),
            // Center(child: Text("calls"),)
          ]),
        ));
  }
}
