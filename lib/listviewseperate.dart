import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listviewseperate(),));
}

class Listviewseperate extends StatelessWidget {
  const Listviewseperate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Seperate"),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Text("hello"),
          color: Colors.red,
        );
      }, separatorBuilder: (context,index){
        return Divider();
      }, itemCount: 10),
    );
  }
}
