import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: lotieAnim(),));
}
class lotieAnim extends StatelessWidget {
  const lotieAnim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(//child: Lottie.asset("assets/animation/anm.json"),
        child: Lottie.network("https://lottie.host/82c291d1-8ae9-4491-bc5c-2417240fa323/V5upRYlHQ5.json"),
      ),
    );
  }
}
