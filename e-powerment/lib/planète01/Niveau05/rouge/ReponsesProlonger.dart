
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Prolonger.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ReponsesProlonger2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

import 'package:flutter/material.dart';






class ReponsesProlonger extends StatelessWidget {
  ReponsesProlonger({Key? key, required this.value}) : super(key: key);
  final String value;
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
                            alignment: const Alignment(0,-0.6),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'Souviens-toi d’une expérience où tu n\'as pas réussi à poser tes limites et où elles ont été franchies. Raconte comment tu ferais différemment pour les exprimer et qu’elles soient respectées.',
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
                            alignment: const Alignment(0,-0.2),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),

                                width: 360,
                                height: 100,

                                child: Center(
                                  child: Text('$value',style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),textAlign: TextAlign.center,),
                                )
                            ),
                          ),

                          Stack(
                              children:[


                                Align(
                                  alignment: const Alignment(0,0.3),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Colors.white,
                                      ),

                                      width: 250,
                                      height: 150,

                                      child: buildTextField('Toucher pour écrire...')
                                  ),
                                ),


                                Align(
                                  alignment: const Alignment(0,0.1),
                                  child: RichText(
                                    text:  const TextSpan(
                                      text: 'Ecrire un souvenir:',
                                      style: TextStyle(color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),

                                      /*defining default style is optional */

                                    ),

                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ]
                          ),


                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return    ReponsesProlonger2(value: value);
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

  Widget buildTextField( String placeholder   ) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 8,vertical: 30),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,
          maxLines: null,

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
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500
              )

          ),



        ),
      ),

    );

  }
}
