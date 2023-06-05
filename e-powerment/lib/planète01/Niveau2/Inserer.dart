
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/page_niveau1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/ciel_competence.dart';
import 'package:flutter/material.dart';






class Inserer extends StatelessWidget {
  Inserer({Key? key}) : super(key: key);

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

                Stack(

                  children: [

                    Align(
                      alignment: const Alignment(0,-0.5),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Tu as sûrement des compétences qui\nn’étaient pas listées.\nTu peux les ajoutéer ici  :',
                          style: TextStyle(color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold),

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

                        return   const Niveau();
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
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: Image.asset(
                            'images/nuage3.png',
                            width: 250,
                            height: 250,

                          ),
                        ),
                      ),
                      Align(
                          alignment: const Alignment(0,0),
                          child: buildTextField('Insérer une compétence'))
                    ]
                ),
                Align(
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: (){
                      _formKey.currentState!.save(); // appel de onSaved
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    CielCompetence();
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
      padding: const EdgeInsets.all( 45),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,
          maxLines: null,
          onSaved: (String? value) async {
            String value = myController.text;
            if(value != "") {
              print('La valeur saisie est : $value');
              final competence = Competence(
                idCompetence: 99,
                competence: value,
              );
              await NotesDatabase.instance.createC(competence);
            }
          },
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only( left: 75),


              border: InputBorder.none,





              // floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle:  const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )

          ),



        ),
      ),

    );

  }
}
