
import 'package:e_empowerment/B1.dart';
import 'package:e_empowerment/B2.dart';
import 'package:e_empowerment/B3.dart';
import 'package:e_empowerment/B4.dart';
import 'package:e_empowerment/B5.dart';
import 'package:e_empowerment/B6.dart';
import 'package:e_empowerment/B7.dart';
import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/Niveau3.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/ChoixModel.dart';



import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Besoin1 extends StatelessWidget {
   Besoin1({Key? key}) : super(key: key);
final _controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
              fit:BoxFit.cover
          ),
        ),
        child: Stack(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

             Padding(
               padding: const EdgeInsets.only(top: 60,left: 25,right: 25),
               child: RichText(
                  text:  const TextSpan(
                    text: 'Quels sont mes besoins ?\nJe ne suis pas obligé.e de sélectionner tous\nmes besoins : je peux choisir ceux qui\ncomptent le plus pour moi en ce\nmoment, ceux qui me semblent plus\ndurs à communiquer...',
                    style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                    /*defining default style is optional */

                  ),

                  textAlign: TextAlign.center,
                ),
             ),

            Padding(
              padding: const EdgeInsets.all(5.0),

                child: Align(
                  alignment: const Alignment(0,0.6),
                  child: SizedBox(
                    height: 480,
                    child: PageView(
                      controller: _controller,
                      children:  [
                        B1(),
                        B2(),
                        B3(),
                        B4(),
                        B5(),
                        B6(),
                        B7()
                      ],
                    )
                  ),
                ),

            ),
            Align(
              alignment: const Alignment(0,0.9),
              child: SmoothPageIndicator(
                  controller: _controller,
                  count: 7,
                effect:  const SwapEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.white38,
                  dotHeight: 20,
                  dotWidth: 20
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.9,0.95),
              child: IconButton(


                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return    Besoin2();
                  },),);
                }, icon: const Icon(Icons.navigate_next),
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
