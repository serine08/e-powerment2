
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Limitom%C3%A8tre.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';






class Situation3 extends StatefulWidget {
  Situation3({Key? key}) : super(key: key);

  @override
  State<Situation3> createState() => _Situation3State();
}

class _Situation3State extends State<Situation3> {
  TextEditingController myController = TextEditingController();


  late SharedPreferences _prefs;



  @override
  void initState() {
    super.initState();
  }

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
                            alignment: const Alignment(-0.5,-0.6),
                            child: Container(
                              decoration:  BoxDecoration(
                                border: Border.all(
                                  color: Colors.orange, // Change the border color here
                                  width: 8.0,
                                ),

                                color: Colors.transparent,

                                shape: BoxShape.circle
                              ),

                              width: 150,
                              height: 130,
                              child: const Center(child: Text("Physique",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(0.4,-0.6),
                            child: Container(
                              decoration:  BoxDecoration(
                                border: Border.all(
                                  color: Colors.yellow, // Change the border color here
                                  width: 8.0,
                                ),
                                color: Colors.transparent,
                                shape: BoxShape.circle
                              ),

                              width: 150,
                              height: 130,
                              child: const Center(child: Text("Sexuelle",style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(0.8,-0.22),
                            child: Container(

                              decoration:  BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple, // Change the border color here
                                  width: 8.0,
                                ),
                                color: Colors.transparent,
                                shape: BoxShape.circle
                              ),

                              width: 150,
                              height: 130,
                              child: const Center(child:  Text("Matérielle",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(0.4,0.15),

                            // Call _changeColor method when container is tapped
                              child: Container(
                                decoration:  BoxDecoration(
                                  border: Border.all(
                                    color: Colors.lightGreen, // Change the border color here
                                    width: 8.0,
                                  ),
                                  color: Colors.transparent,
                                  shape: BoxShape.circle
                                ),

                                width: 150,
                                height: 130,
                                child:  Center(child: Text("Mentale",style: TextStyle(color: Colors.lightGreen,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                              ),

                          ),

                          Align(
                            alignment: const Alignment(-0.9,-0.22),
                            child: Container(

                              decoration:  BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red, // Change the border color here
                                    width: 8.0,
                                  ),
                                  color: Colors.transparent,
                                  shape: BoxShape.circle
                              ),

                              width: 150,
                              height: 130,
                              child: const Center(child:  Text("Emotionnelle",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(-0.5,0.15),

                            // Call _changeColor method when container is tapped
                            child: Container(
                              decoration:  BoxDecoration(
                                  border: Border.all(
                                    color: Colors.lightBlue, // Change the border color here
                                    width: 8.0,
                                  ),
                                  color: Colors.transparent,
                                  shape: BoxShape.circle
                              ),

                              width: 150,
                              height: 130,
                              child:  Center(child: Text("Spirituelle",style: TextStyle(color: Colors.lightBlue,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                            ),

                          ),






                          Align(
                            alignment: const Alignment(0,0.7),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'Dans cette situation inconfortable, une de tes\nlimites a peut-être été franchie. Parmi ces\nlimites, pourrais-tu choisir celle qui\ncorrespond le plus à ta situation ?',
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                                /*defining default style is optional */

                              ),

                              textAlign: TextAlign.center,
                            ),
                          ),


                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return    Limitometre();
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
