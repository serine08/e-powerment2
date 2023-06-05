
import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/Souvenir1.dart';



import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

import 'package:flutter/material.dart';






class IntroSouvenir extends StatelessWidget {
  IntroSouvenir({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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


                Stack(
                    children:[



                      Align(
                        alignment: Alignment(0,0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),

                            width: 250,
                            height: 200,

                            child: Align(
                                alignment:Alignment(0,-1),
                                child: buildTextField('Toucher pour écrire...'))
                        ),
                      ),

                    ]
                ),

                Align(
                  alignment: const Alignment(0.9,0.95),
                  child: IconButton(


                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    Besoin2();
                      },),);
                    }, icon: const Icon(Icons.navigate_next),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                ),


                Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.46)



                    )
                ),

                Align(
                  alignment: const Alignment(0,0.8),

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
                Align(
                  alignment: const Alignment(0,-0.7),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Est-ce que tu te rappelles de la dernière\nfois où tu as été *une des qualités\nsélectionnées* ou que quelqu’un t’a dit que\ntu étais *une autre des qualités\nsélectionnées* ?',
                      style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),


                ),
                Align(
                  alignment: const Alignment(0,0.25),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Pour écrire ou raconter un souvenir,\nclique sur l’une des qualités :\nécris ou enregistre un souvenir\nde la dernière fois que tu as fait preuve de\ncette qualité, ou qu’une personne t’a\ncomplimenté dessus. Tu peux retrouver\nces souvenirs derrière chacune des\nétoiles du jeu de grattage, dans ton menu\nprincipal.',
                      style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),


                ),
                Align(
                  alignment: const Alignment(0,0.99),
                  child: TextButton(

                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                        elevation:20

                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          // return Slide4();
                          return Souvenir1();
                        },),);
                      },
                      child: const Text('Toucher pour continuer')),
                )



              ]
          ),



        ),
























      ),

    );

  }

  Widget buildTextField( String placeholder   ) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 8,vertical: 16),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,

          onSaved: (String? value){
            String value = myController.text;
            print('La valeur saisie est : $value');
          },
          decoration: InputDecoration(





              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,

                ),

              ),

              enabledBorder:   OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.5

                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white
                  )
              ),
              fillColor: Colors.white,
              filled: true,

              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle:  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500
              )

          ),



        ),
      ),

    );

  }
}
