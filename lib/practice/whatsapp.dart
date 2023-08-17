import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: chats(),
  ));
}

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _HomepageState();
}

class _HomepageState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
      ),
      body: ListView(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")),
              title: Text("Olivia"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined, color: Colors.blue),
                  Text("helooo"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("5:11AM")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80")),
              title: Text("David"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined, color: Colors.blue),
                  Text("helooo"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("11:11PM")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://plus.unsplash.com/premium_photo-1668896123983-00aab3eb5b98?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80")),
              title: Text("Rachel"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined),
                  Text("helooo"),
                ],
              ),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 20),
                  Text("4:12PM"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.expand_circle_down_sharp,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Ben"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined),
                  Text("helooo"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("3:17AM")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTN8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Monica"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined, color: Colors.blue),
                  Text("oii"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Tuesday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
              title: Text("john"),
              subtitle: Row(
                children: [
                  Text("ig"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Saturday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Ethan"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all_outlined, color: Colors.blue),
                  Text("hmm"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Monday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://plus.unsplash.com/premium_photo-1669138512601-e3f00b684edc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDl8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Rachel"),
              subtitle: Row(
                children: [
                  Text("Hows you"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Wednesday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Ram"),
              subtitle: Row(
                children: [
                  Text("Goodnight"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Wednesday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1568038479111-87bf80659645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Rose"),
              subtitle: Row(
                children: [
                  Text("ok"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Tuesday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
              title: Text("Ram"),
              subtitle: Row(
                children: [
                  Text("Goodnight"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Wednesday")],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1568038479111-87bf80659645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
      title: Text("Rose"),
              subtitle: Row(
                children: [
                  Text("ok"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(width: 20), Text("Tuesday")],
              ),
            ),
          ),
          //FloatingActionButton(onPressed: (){}),
        ],
      ),
    );
  }
}
