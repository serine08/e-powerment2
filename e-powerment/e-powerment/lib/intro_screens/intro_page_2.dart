import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntroPage2State createState() => _IntroPage2State();


}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(

  heightFactor: 5,
        child:


        Lottie.network('https://assets9.lottiefiles.com/packages/lf20_nR7PnFZxls.json'),

      ),

    );




  }
}