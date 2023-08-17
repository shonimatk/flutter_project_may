import 'package:flutter/material.dart';

class sqfliteCrud extends StatefulWidget {
  const sqfliteCrud({Key? key}) : super(key: key);

  @override
  State<sqfliteCrud> createState() => _sqfliteCrudState();
}

class _sqfliteCrudState extends State<sqfliteCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>showSheet(null),child: Icon(Icons.add),),
    );
  }
  void showSheet(int? id){
    if (id !=null){
      showModalBottomSheet(context: context, builder: builder)
    }
  }
}
