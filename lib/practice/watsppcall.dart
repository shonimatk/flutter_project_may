import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Callbox(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Callbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: ListView(
        children: const [
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              title: Text("Create call link"),

              leading: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")),

              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Share a link for your WhatsApp call",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              //   trailing: Row(
            ),
          ),
          Text("Recent"),
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTN8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
              ),

              title: Text("chris"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.video_call,
                        color: Colors.green,
                      )),
                ],
              ),

              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text("5 july,9:18 am"),
                ],
              ),
              //   trailing: Row(

              //  children: [

              //  ],
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text(
                "Joey",
                style: TextStyle(color: Colors.red),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.video_call,
                        color: Colors.green,
                      )),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.red,
                    size: 15,
                  ),
                  Text("3 july,6:43 pm"),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
              title: Text("Cavill"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text("30 june,1:30 pm"),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text(
                "Ian",
                style: TextStyle(color: Colors.red),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.red,
                    size: 15,
                  ),
                  Text("25 june,9:42 pm"),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 6,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1669138512601-e3f00b684edc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDl8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Cillian"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.green,
                      )),
                ],
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.green,
                    size: 15,
                  ),
                  Text("21 june,1:42 pm"),
                ],
              ),
            ),
          ),
          //  children: [

          //  ],
        ],
      ),
    );
  }
}
