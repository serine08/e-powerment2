import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntroPage3State createState() => _IntroPage3State();


}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff29216B ),
      body: Center(


        child:  Lottie.network('https://assets6.lottiefiles.com/packages/lf20_4tg3fb79.json'),

      ),

    );




  }
}