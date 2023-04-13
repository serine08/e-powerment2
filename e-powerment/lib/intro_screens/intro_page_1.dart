import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:icon_forest/iconoir.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';


class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntroPage1State createState() => _IntroPage1State();
 

}

class _IntroPage1State extends State<IntroPage1> {
  final style =const TextStyle(fontSize: 50,fontWeight: FontWeight.bold ,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xff29216B ),
      body: Center(

            child: SizedBox(

                child: DefaultTextStyle(
                  style: GoogleFonts.poppins(
                    textStyle: style,
                  ),
                  textAlign:TextAlign.center,
                  child: AnimatedTextKit(

                  animatedTexts: [

                    TyperAnimatedText("Bienvenue à"),
                    TyperAnimatedText("Aile Mental"),
                  ],
                  onTap: (){
                    print("Tap Event");
                  },
                ),
                ),
            ),
         // child:  Lottie.network('https://assets9.lottiefiles.com/packages/lf20_KTTSsGSbg1.json'),

            ),

      );




  }
}

    