// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   //to run an program //runapp to attach the widget
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     //default theme of app (multiplatform support)
//     home:
//     Firstpage(), //initial screen of our app, home must be a widget it may be stateless or statefull
//   ));
// }

// class Firstpage extends StatelessWidget {
//   //stateless mean firstpage do not undergo any state change
//   @override
//   Widget build(BuildContext context) {
//     // to create a widget tree (Build context -> to monitor the widgets in the widget tree
//     return Scaffold(
//       // backgroundColor: Colors.teal,

//       // appBar: AppBar(
//       //   title: Text(
//       //     "Hello",
//       //     style: TextStyle(fontSize: 20, color: Colors.white),
//       //   ),
//       // ),
//       body: Container(
//         //color: Colors.green, //to add asingle color
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.lightGreen,
//               Colors.greenAccent,
//               Colors.green,
//               Colors.lightGreenAccent,
//             ], begin: Alignment.bottomRight, end: Alignment.topLeft
//             //to set  an image as screen background
//             //     image: DecorationImage(
//             //   // fit: BoxFit.cover, //to fill the image to the entire screen
//             //   // image: AssetImage(
//             //   //     "assets/images/febe-vanermen-dcizQS1YnoU-unsplash.jpg"),
//             //   //     image: NetworkImage("url")
//           )
//       ),
//       child: Center(
//         child: Column(
//           //for coloumn childern will place from to left to botom left
//           mainAxisAlignment: MainAxisAlignment.center,
//           //to move children to center of he colomn
//           children: [
//             Image.asset(
//               "assets/icons/5210074_game_intertainment_pacman_icon.png",
//               // Image.network(
//               //   "https://static.vecteezy.com/system/resources/previews/000/376/355/original/user-management-vector-icon.jpg",
//               height: 200,
//               width: 200,
//             ),
//             Text(
//               "My App",
//               // style: TextStyle(fontSize: 40, color: Colors.blue,fontWeight: FontWeight.),
//              style: GoogleFonts.dancingScript(),
//             ),
//             // Icon(Icons.favorite,size: 40,color: Colors.red,),
//           ],
//         ),
//       ),
//     ));
//   }
// }
