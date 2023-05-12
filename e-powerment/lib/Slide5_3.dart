import 'package:e_empowerment/Slide1.dart';
import 'package:e_empowerment/Slide6.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/page_niveau1.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'Slide5.dart';


class Slide5_3 extends StatefulWidget {
  const Slide5_3({Key? key}) : super(key: key);

  @override
  State<Slide5_3> createState() => _Slide5_3State();
}

class _Slide5_3State extends State<Slide5_3> {



  late String value;
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover
            ),
          ),










          child: Center(





            child: Stack(

              children: [


                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Quelle qualités\nte correspondent ? ',
                      style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),








                GestureDetector(
                  onTap: (){

                    value="Attentionné.e";


                  },
                  child: Stack(
                      children:[


                        Align(
                            alignment: const Alignment(0.9,-0.7),


                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            )


                        ),

                        const Align(
                            alignment:Alignment(0.85,-0.55),

                            child: Text('Courageux.se',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),





                GestureDetector(
                  onTap: (){
                    value="Déterminé.e";
                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0.2,-0.4),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0.15,-0.32),

                            child: Text('Débrouillard.e',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    value="Créatif.ve";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.3,-0.65),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(-0.25,-0.52),

                            child: Text('Doux.ce',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Dynamique";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.8,-0.32),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(-0.7,-0.25),

                            child: Text('Festif.ve',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Fiable";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0.9,-0.2),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0.7,-0.15),

                            child: Text('Fort.e',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Génereux.se";
                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0,-0.08),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0,-0.05),

                            child: Text('honnête',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Humble";
                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0.85,0.14),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0.7,0.14),

                            child: Text('Impulsif.ve',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]

                  ),
                ),

                GestureDetector(
                  onTap: (){
                    value="Indépendant.e";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0,0.3),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0,0.3),

                            child: Text('Joueur.se',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    value="Joyeux.se";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.94,0.05),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(-0.8,0.07),

                            child: Text('Optimisite',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Organisé.e";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.9,0.44),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(-0.78,0.4),

                            child: Text('Ouvert.e',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    value="Passionné.e";
                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0,0.6),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );
                            },
                            child: Image.asset(
                              'images/nuage2.png',
                              width: 120,
                              height: 120,

                            ),
                          ),
                        ),
                        const Align(
                            alignment:Alignment(0,0.54),

                            child: Text('Pragmatique',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0.9,0.5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Slide1()),
                            );
                          },
                          child: Image.asset(
                            'images/nuage2.png',
                            width: 120,
                            height: 120,

                          ),
                        ),
                      ),
                      const Align(
                          alignment:Alignment(0.8,0.45),

                          child: Text('Rationnel.le',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ]
                ),
                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0.8,0.81),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Slide1()),
                            );
                          },
                          child: Image.asset(
                            'images/nuage2.png',
                            width: 120,
                            height: 120,

                          ),
                        ),
                      ),
                      const Align(
                          alignment:Alignment(0.78,0.7),

                          child: Text('Rigolo.te',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ]
                ),
                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(-0.85,0.84),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Slide1()),
                            );
                          },
                          child: Image.asset(
                            'images/nuage2.png',
                            width: 120,
                            height: 120,

                          ),
                        ),
                      ),
                      const Align(
                          alignment:Alignment(-0.7,0.73),

                          child: Text('Spontané.e',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ]
                ),
                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0,1),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Slide1()),
                            );
                          },
                          child: Image.asset(
                            'images/nuage2.png',
                            width: 120,
                            height: 120,

                          ),
                        ),
                      ),
                      const Align(
                          alignment:Alignment(0,0.88),

                          child: Text('Sportif.ve',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ]
                ),



                Align(
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    Slide6();
                      },),);
                    }, icon: const Icon(Icons.navigate_next),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                )


















              ],
            ),







          ),
        )
    );
  }
}
