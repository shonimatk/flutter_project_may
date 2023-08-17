import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  const StackEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1542378151504-0361b8ec8f93?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"))),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Text("Stack on my data",style:TextStyle(fontSize: 40,color: Colors.white),),
            ),
            Positioned(
              right: 100,
              bottom: 30,
              child: Container(
                height: 100,
                width: 100,
                child: Text("Rating4",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
