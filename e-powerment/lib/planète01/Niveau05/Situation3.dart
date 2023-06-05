
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Limitom%C3%A8tre.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

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

  int _selectedContainer = -1;
  double _initialBorderWidth = 6.0;
  double _selectedBorderWidth = 16.0;


  void _handleContainerTap(int index) {
    setState(() {
      _selectedContainer = index;
    });
    print('Conteneur tapé : $index');
  }


  @override
  void initState() {
    super.initState();
  }
  // Méthode pour afficher l'index du conteneur dans la console

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
                            alignment: const Alignment(-0.5,-0.1),
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(0), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(
                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.orange, // Change the border color here
                                      width: _selectedContainer == 0
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),

                                    color: Colors.transparent,

                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child: const Center(child: Text("Physique",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                              ),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(0.4,-0.1),
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(1), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(
                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.yellow, // Change the border color here
                                      width: _selectedContainer == 1
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child: const Center(child: Text("Sexuelle",style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(0.8,0.3),
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(2), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(

                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.purple, // Change the border color here
                                      width: _selectedContainer == 2
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child: const Center(child:  Text("Matérielle",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                              ),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(0.4,0.7),

                            // Call _changeColor method when container is tapped
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(3), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(
                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.lightGreen, // Change the border color here
                                      width: _selectedContainer == 3
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child:  Center(child: Text("Mentale",style: TextStyle(color: Colors.lightGreen,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                              ),
                            ),

                          ),

                          Align(
                            alignment: const Alignment(-0.9,0.3),
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(4), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(

                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red, // Change the border color here
                                      width: _selectedContainer == 4
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child: const Center(child:  Text("Emotionnelle",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                              ),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(-0.5,0.7),

                            // Call _changeColor method when container is tapped
                            child: GestureDetector(
                              onTap: () => _handleContainerTap(5), // Appeler _handleContainerTap avec l'index correspondant

                              child: Container(
                                decoration:  BoxDecoration(
                                    border: Border.all(
                                      color: Colors.lightBlue, // Change the border color here
                                      width: _selectedContainer == 5
                                          ? _selectedBorderWidth
                                          : _initialBorderWidth,                                    ),
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),

                                width: 160,
                                height: 160,
                                child:  Center(child: Text("Spirituelle",style: TextStyle(color: Colors.lightBlue,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                              ),
                            ),

                          ),






                          Align(
                            alignment: const Alignment(0,-0.6),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: RichText(
                                text:  const TextSpan(
                                  text: 'Peut-être que cette situation était un moment désagréable pour toi car une de tes limites a été franchie. Saurais-tu dire de quel ordre était cette limite ?',
                                  style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                                  /*defining default style is optional */

                                ),

                                textAlign: TextAlign.center,
                              ),
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
