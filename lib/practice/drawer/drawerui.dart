import 'package:flutter/material.dart';

import '../../assignment/login/login.dart';
import 'draftpage.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerUi(),
  ));
}

class DrawerUi extends StatelessWidget {
  const DrawerUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.deepOrange,
              Colors.redAccent,
            ], begin: Alignment.topCenter)),
            child: ListView(
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
                      ),
                      title: Text("Olivia Rodrigo"),
                      subtitle: Text("Founder of Wan"),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Draft()));
                  },
                  leading: const Icon(Icons.dashboard_rounded),
                  title: const Text("Dashboard"),
                ),
                const ListTile(
                  leading: Icon(Icons.leak_add),
                  title: Text("Leads"),
                ),
                const ListTile(
                  leading: Icon(Icons.people_alt_sharp),
                  title: Text("Clients"),
                ),
                const ListTile(
                  leading: Icon(Icons.rocket_launch),
                  title: Text("Projects"),
                ),
                const ListTile(
                  leading: Icon(Icons.subscriptions_sharp),
                  title: Text("Subscription"),
                ),
                const ListTile(
                  leading: Icon(Icons.payments_sharp),
                  title: Text("Payments"),
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Users"),
                ),
                const ListTile(
                  leading: Icon(Icons.library_add),
                  title: Text("Library"),
                ),
                SizedBox(
                  height: 220,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text("Logout")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
