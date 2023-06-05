
import 'package:e_empowerment/TextField.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';

import 'package:flutter/material.dart';






class question01 extends StatelessWidget {
  question01({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            child: Center(


              child: Stack(
                  children:[




                    Align(
                      alignment: const Alignment(0,-0.6),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Qu’est ce que tu aimerais vivre et qui\n ne se passe pas en ce moment ?',
                          style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

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


                    Stack(
                        children:[


                          Align(
                            alignment: const Alignment(0,0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),

                              width: 250,
                              height: 200,

                                  child: buildTextField('Toucher pour écrire...')
                            ),
                          )
                        ]
                    ),

                    Align(
                      alignment: const Alignment(0.9,0.95),
                      child: IconButton(


                        onPressed: () async {
                                     final form = _formKey.currentState;
                                     if (form != null && form.validate()) {
                                     form.save(); // Save the form data

                                     String textFieldValue = myController.text; // Retrieve the text field value
                                     if (textFieldValue.isNotEmpty) {
                                     final textFieldData = await NotesDatabase.instance.createTextFieldData("some quality", textFieldValue);
                                     print('Saved TextFieldData: $textFieldValue');
                                        }

                                     Navigator.push(context, MaterialPageRoute(builder: (context){

                                     return    question01Bis();
                                    },),);
                                    }
                                     }, icon: const Icon(Icons.navigate_next),
                                        iconSize: 40,
                                   color: Colors.white,


                      ),
                    ),

                  ]
              ),



            ),
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
