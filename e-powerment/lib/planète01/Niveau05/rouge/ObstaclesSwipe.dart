
import 'package:e_empowerment/B1.dart';
import 'package:e_empowerment/B2.dart';
import 'package:e_empowerment/B3.dart';
import 'package:e_empowerment/B4.dart';
import 'package:e_empowerment/B5.dart';
import 'package:e_empowerment/B6.dart';
import 'package:e_empowerment/B7.dart';
import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Limitom%C3%A8tre.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Conseil1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Conseil2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Conseil3.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Conseil4.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Conseil5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Obstacle1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Obstacle2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Abres01.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre02.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre03.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/Arbre04.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';





import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class ObstaclesSwipe extends StatelessWidget {
  ObstaclesSwipe({Key? key}) : super(key: key);
  final _controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(

          child: Stack(

            children: [






              PageView(
                controller: _controller,
                children:  const [
                  Obstacle1(),
                  Obstacle2(),

                ],
              ),




              Align(
                alignment: const Alignment(0,0.9),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
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

                      return    const Limitometre();
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
