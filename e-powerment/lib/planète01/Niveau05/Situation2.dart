
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation3.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';






class Situation2 extends StatefulWidget {
  Situation2({Key? key}) : super(key: key);

  @override
  State<Situation2> createState() => _Situation2State();
}

class _Situation2State extends State<Situation2> {
  TextEditingController myController = TextEditingController();

  Color _containerColor = Colors.white;
  Color _textColor = Colors.white;

  Color _originalColor = Colors.white;
  Color _originalTextColor = Colors.black;

  bool _isColorChanged = false;
  late SharedPreferences _prefs;

  void _loadSavedColor() async {
    _prefs = await SharedPreferences.getInstance();
    final bool isColorChanged = _prefs.getBool('isColorChanged') ?? false;
    if (isColorChanged) {
      setState(() {
        _containerColor = Colors.blue; // Change the color to your desired color
        _textColor = Colors.white; // Change the text color to your desired color
        _isColorChanged = true;
      });
    }
  }
  void _saveColor() async {
    await _prefs.setBool('isColorChanged', _isColorChanged);
  }

  void _changeColor() {
    setState(() {
      if (_isColorChanged) {
        _containerColor = _originalColor;
        _textColor = _originalTextColor;
        _isColorChanged = false;
      } else {
        _originalColor = _containerColor;
        _originalTextColor = _textColor;
        _containerColor = Colors.purple; // Change the color to your desired color
        _textColor = Colors.white; // Change the text color to your desired color
        _isColorChanged = true;
      }
    });
    _saveColor();
  }
  @override
  void initState() {
    super.initState();
    _loadSavedColor();
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

                          Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration:  BoxDecoration(

                                  color: const Color(0xff000000).withOpacity(0.46)



                              )
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
                                  alignment: const Alignment(-0.7,-0.6),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Colors.white,
                                      ),

                                      width: 150,
                                      height: 100,
                                      child: const Center(child: Text("Proches",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                                  ),
                                ),

                          Align(
                            alignment: const Alignment(0.7,-0.6),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),

                              width: 150,
                              height: 100,
                              child: const Center(child: Text("Médical",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.7,0.4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),

                              width: 150,
                              height: 100,
                              child: const Center(child:  Text("Inconnu.es",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                          ),

                          Align(
                            alignment: const Alignment(0.7,0.4),
                            child: GestureDetector(
                           onTap: _changeColor, // Call _changeColor method when container is tapped
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: _containerColor,
                                ),

                                width: 150,
                                height: 100,
                                child:  Center(child: Text("Professionnel / Scolaire",style: TextStyle(color: _textColor,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                              ),
                            ),
                          ),







                          Align(
                            alignment: const Alignment(0.1,-0.1),

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
                            alignment: const Alignment(0,0.7),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'Quel est le domaine qui correspond à la\nsituation que tu as en tête ? Choisis et clique sur\nce domaine pour passer à la slide suivante.',
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

                                  return    Situation3();
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
