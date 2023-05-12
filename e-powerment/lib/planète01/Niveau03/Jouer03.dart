

import 'package:e_empowerment/Besoin1.dart';
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Comp%C3%A9tence1.dart';

import 'package:flutter/material.dart';




class Jouer03 extends StatefulWidget {
  const Jouer03({Key? key}) : super(key: key);

  @override
  State<Jouer03> createState() => _Jouer03State();
}

class _Jouer03State extends State<Jouer03> {

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
                          text: 'Ici, tu peux apprendre à nommer\net identifier quels sont tes\nbesoins. Savoir quels sont ses\nbesoins, c’est une étape pour\npouvoir ensuite les respecter et\nles communiquer aux autres. On\na des besoins en commun et des\nbesoins particuliers ; des besoins\nqu’on connaît déjà et d’autres\nqu’on peut découvrir.',
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

                              return    Besoin1();
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
