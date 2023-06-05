
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ObstaclesSwipe.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/SouvenirQues.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Slide2Niveau4.dart';

import 'package:flutter/material.dart';




class Obstacle2 extends StatefulWidget {
  const Obstacle2({Key? key}) : super(key: key);

  @override
  State<Obstacle2> createState() => _Obstacle2State();
}

class _Obstacle2State extends State<Obstacle2> {

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
                            text: 'La liste des obstacles qui pourraient faire écho à ma situation :\n\n\n7/ Je n’ai pas confiance en moi\n\n8/ J’ai l’impression que ce que je pense n’est pas très intéressant ni important\n\n9/ J’ai peur d’avoir l’air égoïste\n\n10/ J’ai envie qu’on m’apprécie\n\n11/ J’aime faire plaisir et j’aime aider\n\n12/ J’ai l’habitude de faire comme ça',
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

                      Align(
                        alignment: const Alignment(0.9,0.95),
                        child: IconButton(


                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return    SouvenirQuest();
                            },),);

                          }, icon: const Icon(Icons.navigate_next),
                          iconSize: 40,
                          color: Colors.white,


                        ),
                      )
                    ]
                ),

              ]

          ),
























        ),
      ),
    );
  }
}
