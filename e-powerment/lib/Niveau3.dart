import 'package:e_empowerment/Besoin1.dart';

import 'package:e_empowerment/Slide7.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Jouer.dart';



import 'package:flutter/material.dart';
import 'dart:math' as math;





class Niveau3 extends StatefulWidget {
  const Niveau3({Key? key}) : super(key: key);

  @override
  State<Niveau3> createState() => _Niveau3State();
}

class _Niveau3State extends State<Niveau3> {

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








                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(-0.65,-0.29),
                        child: Transform.rotate(
                          angle: -math.pi/4,
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(

                                width: 93,
                                height: 90,
                                decoration:   const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/etoile2.png"),
                                    fit:BoxFit.cover,

                                  ),

                                  shape: BoxShape.rectangle,


                                )
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment:const Alignment(-0.51,-0.25),
                          child: Transform.rotate(
                              angle: math.pi/8,
                              child: const Text('4',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),


                    ]
                ),

                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0.68,-0.6),
                        child: Transform.rotate(
                          angle: math.pi/16,
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(

                                width: 93,
                                height: 90,
                                decoration:   const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/etoile2.png"),
                                    fit:BoxFit.cover,

                                  ),

                                  shape: BoxShape.rectangle,


                                )
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment:const Alignment(0.55,-0.53),
                          child: Transform.rotate(
                              angle: math.pi/12,
                              child: const Text('5',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),
                    ]
                ),


                Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.4)



                    )
                ),

                Stack(

                  children: [




                    Align(
                      alignment: const Alignment(0.65,-0.3),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Passons au\n troisième niveau',
                          style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),



                Stack(
                    children: [

                      Align(
                        alignment: const Alignment(0.6,0.85),
                        child: Transform.rotate(
                          angle: math.pi/2,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){

                                return Jouer();
                              },),);
                            },
                            child: Container(

                                width: 93,
                                height: 90,
                                decoration:   const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/etoile2.png"),
                                    fit:BoxFit.cover,

                                  ),

                                  shape: BoxShape.rectangle,


                                )
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment:const Alignment(0.469,0.76),
                          child: Transform.rotate(
                              angle: math.pi/12,
                              child: const Text('1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),


                    ]
                ),
                Stack(
                    children: [

                      Align(
                        alignment: const Alignment(-0.6,0.4),
                        child: Transform.rotate(
                          angle: math.pi/4,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){

                                return Slide7();
                              },),);
                            },
                            child: Container(

                                width: 93,
                                height: 90,
                                decoration:   const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/etoile2.png"),
                                    fit:BoxFit.cover,

                                  ),

                                  shape: BoxShape.rectangle,


                                )
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment:const Alignment(-0.5,0.37),
                          child: Transform.rotate(
                              angle: -math.pi/12,
                              child: const Text('2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),

                    ]
                ),
                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0.65,0.01),

                        child: Transform.rotate(
                          angle: math.pi/120,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){

                                return Besoin1();
                              },),);
                            },
                            child: Container(

                                width: 93,
                                height: 90,
                                decoration:   const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/etoile2.png"),
                                    fit:BoxFit.cover,

                                  ),

                                  shape: BoxShape.rectangle,


                                )
                            ),
                          ),
                        ),

                      ),
                      Align(
                          alignment:const Alignment(0.53,0.019),
                          child: Transform.rotate(
                              angle: math.pi/48,
                              child: const Text('3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),

                    ]
                ),

              ]
          ),



        ),
























      ),

    );
  }
}
