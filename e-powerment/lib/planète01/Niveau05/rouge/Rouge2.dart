
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ObstaclesSwipe.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Slide2Niveau4.dart';

import 'package:flutter/material.dart';




class Rouge2 extends StatefulWidget {
  const Rouge2({Key? key}) : super(key: key);

  @override
  State<Rouge2> createState() => _Rouge2State();
}

class _Rouge2State extends State<Rouge2> {

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
                        alignment: const Alignment(0,-0.5),
                        child: RichText(
                          text:  const TextSpan(
                            text: 'Il y a souvent des obstacles qui nous empêchent d’exprimer nos vrais désirs et d’imposer les limites dont nous aurions besoin. Ici, tu trouveras les obstacles les plus courants. ',
                            style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                            /*defining default style is optional */

                          ),

                          textAlign: TextAlign.center,
                        ),
                      ),




                      Align(
                        alignment: const Alignment(0,0.395),

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

                              return    ObstaclesSwipe();
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
