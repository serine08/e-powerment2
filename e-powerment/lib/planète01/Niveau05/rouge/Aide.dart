
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Rouge1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Slide2Niveau4.dart';

import 'package:flutter/material.dart';




class Aide extends StatefulWidget {
  const Aide({Key? key}) : super(key: key);

  @override
  State<Aide> createState() => _AideState();
}

class _AideState extends State<Aide> {

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
                          text: 'Aurais-tu besoin d’aide en urgence ? ',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),

                    Align(
                      alignment: const Alignment(0.8,0.9),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 10,
                            backgroundColor: Colors.red,

                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   const Rouge1();
                            },),);
                          },
                          child: const Text('Non')),
                    ),
                    Align(
                      alignment: const Alignment(-0.8,0.9),
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
                          child: const Text('Oui')),
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
