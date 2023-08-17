import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: List_custom(),));
}

class List_custom extends StatelessWidget {
  const List_custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView 4")),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 10,
                (context, index) => Center(child: const Text("Hello"))),
          // childrenDelegate: SliverChildListDelegate(
          //     List.generate(10, (index) => const Text("hELLO")))
    ),
    );
  }
}
