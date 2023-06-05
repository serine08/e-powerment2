
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';

import 'package:flutter/material.dart';




class Slide2N4 extends StatefulWidget {
  const Slide2N4({Key? key}) : super(key: key);

  @override
  State<Slide2N4> createState() => _Slide2N4State();
}

class _Slide2N4State extends State<Slide2N4> {

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
                      alignment: const Alignment(0,-0.1),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Pense à quelque-chose qui te fait réagir émotionnellement, à une situation qui te fait ressentir une émotion désagréable. Tu peux choisir entre ces deux options : ',
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
                      alignment: const Alignment(0.8,0.9),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 10,
                            backgroundColor: Colors.purple,
                             fixedSize: const Size(150, 141),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   const Slide1N4rouge();
                            },),);
                          },
                          child: const Text('Je sens que\nl\'emotion désagréable\npersiste',textAlign: TextAlign.center,)),
                    ),
                    Align(
                      alignment: const Alignment(-0.8,0.9),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 10,
                            backgroundColor: Colors.pink.shade300,
                              fixedSize: const Size(150, 141),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   question01Bis();
                            },),);
                          },
                          child: const Text('J\'arrive à\nlâcher mon\nmotion désagréable',textAlign: TextAlign.center,)),
                    )
                  ],
                ),


                Align(
                  alignment: const Alignment(0,-0.6),

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
