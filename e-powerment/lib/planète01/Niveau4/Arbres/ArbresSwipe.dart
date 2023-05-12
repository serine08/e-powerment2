
import 'package:e_empowerment/B1.dart';
import 'package:e_empowerment/B2.dart';
import 'package:e_empowerment/B3.dart';
import 'package:e_empowerment/B4.dart';
import 'package:e_empowerment/B5.dart';
import 'package:e_empowerment/B6.dart';
import 'package:e_empowerment/B7.dart';
import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Abres01.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre02.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre03.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre04.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';





import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class ArbresSwipe extends StatelessWidget {
  ArbresSwipe({Key? key}) : super(key: key);
  final _controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(

          child: Stack(

            children: [




                 Align(
                  alignment: const Alignment(0,0.6),

                      child: PageView(
                        controller: _controller,
                        children:  const [
                          Arbre01(),
                          Arbre02(),
                          Arbre03(),
                          Arbre04()
                        ],
                      )

                ),


              Align(
                alignment: const Alignment(0,0.9),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect:  const SwapEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white38,
                      dotHeight: 20,
                      dotWidth: 20
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.95,-0.9),
                child: IconButton(


                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return    const Slide1N4rouge();
                    },),);
                  }, icon: const Icon(Icons.cancel),
                  iconSize: 40,
                  color: Colors.white,


                ),
              )

            ],
          ),
        )
    );
  }
}
