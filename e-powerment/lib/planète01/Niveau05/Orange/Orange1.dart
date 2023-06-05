
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Orange2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

import 'package:flutter/material.dart';






class Orange1 extends StatelessWidget {
  Orange1({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false, // Empêcher le redimensionnement automatique du Scaffold
      body: SingleChildScrollView(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration:  const BoxDecoration(

              image: DecorationImage(
                image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover,

              ),
            ),

            child: Column(
              children: [
                Expanded(
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


                          Align(
                            alignment: const Alignment(0,-0.4),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'Tu essaies d’écouter et d’exprimer tes limites, mais c’est difficile, ça te pèse et on ne te comprend pas toujours. Tu es sur le bon chemin. Courage !',
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                                /*defining default style is optional */

                              ),

                              textAlign: TextAlign.center,
                            ),
                          ),



                          Align(
                            alignment: const Alignment(-0.9,-0.9),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return   const Slide1N4rouge();
                                },),);
                              }, icon: const Icon(Icons.cancel),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          ),


                          Align(
                            alignment: const Alignment(0,0.1),

                            child: Container(

                                width: 150,
                                height: 150,
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

                                  return    Orange2();
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
              ],
            ),


          ),
        ),
      ),

    );

  }

}
