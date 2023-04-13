import 'package:e_empowerment/Niveaux.dart';
import 'package:e_empowerment/Slide5.dart';

import 'package:flutter/material.dart';




class Jouer extends StatefulWidget {
  const Jouer({Key? key}) : super(key: key);

  @override
  State<Jouer> createState() => _JouerState();
}

class _JouerState extends State<Jouer> {

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
                          text: 'Dans ce niveau tu vas pouvoir\nfaire la liste des qualités et peut-\netre en decouvrir de nouvelles.Il\nest important de connaitre ses\nqualités definissent qui on est,\nelles composentnotre nature\nprofonde.Le simple fait d\'exsiter\nnous garantit d\'etre doté de\nqualités ',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                        height:30 ),

                    const SizedBox(
                        height:50 ),
                    Align(
                      alignment: const Alignment(0,0.9),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 10,
                            backgroundColor: Colors.green,

                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   const Slide5();
                            },),);
                          },
                          child: const Text('Jouer')),
                    )
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

              ]
          ),



        ),
























      ),

    );
  }
}
