import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: csslider(),
  ));
}

class csslider extends StatelessWidget {
  const csslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(
              10,
                  (index) =>
              const Card(
                color: Colors.purple,
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    size: 40,
                  ),
                ),
              )),

          // Container(
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: NetworkImage(
          //           "https://images.unsplash.com/photo-1568038479111-87bf80659645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
          // )),
          // Container(
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: NetworkImage(
          //           "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),
          // )),
          // Container(
          //     decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: NetworkImage(
          //           "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")),
          // )),
          // Column(
          //   children: [
          //     Text("sho"),
          //     Container(
          //         decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: NetworkImage(
          //               "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80")),
          //     )),
          //   ],
          // ),

          options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
      viewportFraction: 0.6,
      initialPage: 1,
      enableInfiniteScroll: true,
      autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
      autoPlayCurve: Curves.easeInCubic,
      enlargeCenterPage: true,
      enlargeFactor: .3,
      scrollDirection: Axis.horizontal,
    ),)
    );
  }
}
