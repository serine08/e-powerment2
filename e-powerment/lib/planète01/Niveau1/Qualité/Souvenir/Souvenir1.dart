import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/Slide5_5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/ciel_de_qualit%C3%A9.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:flutter/material.dart';





class Souvenir1 extends StatelessWidget {
  Souvenir1({Key? key}) : super(key: key);
  bool isRecording = false;

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
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Quand tu clique sur le\nnuage tu attéri à  la slide suivante ',
                      style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){

                     return   CielQualite();
                   },),);
                 },
                 child: Stack(
                      children:[


                        Align(
                            alignment: const Alignment(0,-0.75),


                            child: Image.asset(
                              'images/nuage3.png',
                              width: 160,
                              height: 160,

                            )


                        ),

                        const Align(
                            alignment:Alignment(-0.01,-0.6),

                            child: Text('Qualité',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
                      ]
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
                        alignment: Alignment(0,0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),

                            width: 250,
                            height: 300,

                            child: Align(
                                alignment:Alignment(0,-0.8),
                                child: buildTextField('Toucher pour écrire...'))
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-0.02,-0.35),
                        child: RichText(
                          text:  const TextSpan(
                            text: 'Ecrire un souvenir',
                            style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),

                            /*defining default style is optional */

                          ),

                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),


                Align(
                  alignment: const Alignment(0,0.8),
                  child: TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(12),
                          textStyle: const TextStyle(fontSize: 20),
                          elevation: 10,
                          backgroundColor: Colors.green,
                          fixedSize: const Size(250, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: (){

                      },
                      child: const Text('Enregistrer un souvenir',textAlign: TextAlign.center,)),
                ),
                Align(
                  alignment: const Alignment(0,0.6),
                  child: TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(10),

                          elevation: 10,
                          backgroundColor: Colors.red,
                          fixedSize: const Size(250, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: (){

                      },
                      child: const Icon(Icons.mic_none_outlined)),
                ),







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
         enabled: false,
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
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
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
