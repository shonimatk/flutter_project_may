import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SimpleContactList")),
      body: ListView(
        children: [
          Card(
            color: Colors.yellow,
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("John"),
              subtitle: Text("9873524223"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Ram"),
              subtitle: Text("6735241112"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Kiran"),
              subtitle: Text("7888383822"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Sam"),
              subtitle: Text("4567838883"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Rachel"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Rose"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Mabel"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Chandler"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Rima"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Monica"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person,color: Colors.cyan,size: 30,),
              title: Text("Eden"),
              subtitle: Text("9366522666"),
              trailing: Icon(Icons.phone),
            ),
          ),
        ],
      ),
    );
  }
}
