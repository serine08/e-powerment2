

import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/page_niveau5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/swipe.dart';

import 'package:flutter/material.dart';




class question01Bis extends StatefulWidget {
  const question01Bis({Key? key}) : super(key: key);

  @override
  State<question01Bis> createState() => _question01BisState();
}

class _question01BisState extends State<question01Bis> {

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
                          text: 'Je te propose d’essayer de comprendre\nle besoin caché qui se trouve derrière\nton émotion. Quel est le besoin qui peut\naider à gérer l’émotion que tu penses\nressentir actuellement ?',
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
                      alignment: const Alignment(0,0.94),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 20
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              // return Slide4();
                              return page_niveau5();
                            },),);
                          },
                          child: const Text('Toucher pour continuer')),
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
