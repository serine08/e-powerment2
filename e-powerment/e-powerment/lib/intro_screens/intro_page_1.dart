import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntroPage1State createState() => _IntroPage1State();
 

}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.deepPurple,
      body: Center(


          child:  Lottie.network('https://assets9.lottiefiles.com/packages/lf20_KTTSsGSbg1.json'),

            ),

      );




  }
}

    