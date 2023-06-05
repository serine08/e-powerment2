
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ObstaclesSwipe.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Slide2Niveau4.dart';

import 'package:flutter/material.dart';




class Obstacle1 extends StatefulWidget {
  const Obstacle1({Key? key}) : super(key: key);

  @override
  State<Obstacle1> createState() => _Obstacle1State();
}

class _Obstacle1State extends State<Obstacle1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
            fit:BoxFit.cover,

          ),
        ),

        child: Center(


          child: Stack(
              children:[

                Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.46)



                    )
                ),





                Stack(

                    children: [
                      const SizedBox(
                          height:200 ),
                      Align(
                        alignment: const Alignment(0,0.35),
                        child: RichText(
                          text:  const TextSpan(
                            text: 'La liste des obstacles qui pourraient faire écho à ma situation :\n\n\n1/ J’ai peur d’être rejeté.e\n\n2/ J’ai peur qu’on me critique\n\n3/ J’ai peur de m’exprimer en public\n\n4/ Je crains l’autorité\n\n5/ J’ai peur des représailles\n\n6/ Je suis timide',
                            style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                            /*defining default style is optional */

                          ),

                          textAlign: TextAlign.center,
                        ),
                      ),




                      Align(
                        alignment: const Alignment(0,-0.75),

                        child: Container(

                            width: 161,
                            height: 161,
                            decoration:   const BoxDecoration(

                              image: DecorationImage(
                                image: AssetImage("images/momo.webp"),
                                fit:BoxFit.cover,

                              ),

                              shape: BoxShape.rectangle,


                            )
                        ),

                      ),


                    ]
                ),

              ]

          ),
























        ),
      ),
    );
  }
}
