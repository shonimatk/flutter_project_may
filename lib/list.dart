import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
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
      appBar: AppBar(
        title: Text("My Home"),
        actions: [
          Icon(Icons.camera),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
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
          Center(
              child: Text(
            "Fruits",
            style: GoogleFonts.dancingScript(fontSize: 50, color: Colors.green),
          )),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Image.asset("assets/images/apple.png"),
              title: Text("Apple"),
              subtitle: Text("\$200"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Image.asset("assets/images/avocado.png"),
              title: Text("Avocado"),
              subtitle: Text("\$300"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Image.asset("assets/images/banana.png"),
              title: Text("Banana"),
              subtitle: Text("\$100"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: Image.asset("assets/images/grapes.png"),
              title: Text("Grapes"),
              subtitle: Text("\$100"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/orange.png")),
              title: Text("Orange"),
              subtitle: Text("\$100"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20),
                  Icon(Icons.favorite)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
