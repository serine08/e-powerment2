

import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/swipe.dart';

import 'package:flutter/material.dart';




class IntroSituation extends StatefulWidget {
  const IntroSituation({Key? key}) : super(key: key);

  @override
  State<IntroSituation> createState() => _IntroSituationState();
}

class _IntroSituationState extends State<IntroSituation> {

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
                          text: 'Une limite, c’est une borne au-delà\nde laquelle ne peuvent aller ou s\'étendre\nune action, une influence, un état... Tes limites,\ncela concerne ce que tu acceptes\nou non de la part des personnes\nautour de toi ; le cadre dans\nlequel tu souhaites interagir avec des personnes.\nEntre faire passer les autres\navant soi, ou se faire passer soi\navant les autres, il est important\nde trouver le juste équilibre.\nOn a donc besoin de s’accorder du\ntemps pour se recentrer sur soi.',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),


                  ],
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
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: (){



                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    Situation();
                      },),);
                    }, icon: const Icon(Icons.navigate_next),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                )

              ]
          ),



        ),
























      ),

    );
  }
}
