import 'package:e_empowerment/Besoin1.dart';

import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/BesoinModel.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/Ciel_Besoin.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/page_niveau.dart';

import 'package:flutter/material.dart';

import 'notes_database.dart';






class Besoin2 extends StatelessWidget {
  Besoin2({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _besoin;
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

                  children: [

                    Align(
                      alignment: const Alignment(0,-0.5),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Autres:',
                          style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
                Align(
                  alignment: const Alignment(-0.9,-0.9),
                  child: IconButton(


                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return   const Slide5();
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
                          child: buildTextField('Insérer un besoin'))
                    ]
                ),
                Align(
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: (){
                      _formKey.currentState!.save(); // appel de onSaved


                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    CielBesoin();
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

    );

  }

  Widget buildTextField( String placeholder ) {
    return  Padding(
      padding: const EdgeInsets.all( 60),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,

          onSaved: (String? value) async {
            String value = myController.text;
            if(value != "") {
              print('La valeur saisie est : $value');

              final besoin = Besoin(
                idBesoin: 99,
                besoin: value,
              );
              await NotesDatabase.instance.createB(besoin);
            }
          },
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only( left: 75),


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
                  color: Colors.grey.shade700
              )

          ),



        ),
      ),

    );

  }
}
