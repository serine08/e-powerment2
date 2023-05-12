import 'package:e_empowerment/Besoin2.dart';
import 'package:e_empowerment/Slide5_5.dart';
import 'package:e_empowerment/page_niveau.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/page_niveau2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:flutter/material.dart';






class FinSouvenir extends StatelessWidget {
  FinSouvenir({Key? key, required this.text}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final String text;
  bool _isFocused = false;

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





                          GestureDetector(

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

                                  Align(
                                      alignment:const Alignment(-0.01,-0.6),

                                      child: Text(text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
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
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return    Niveau();
                                },),);
                              }, icon: const Icon(Icons.navigate_next),
                              iconSize: 40,
                              color: Colors.white,


                            ),
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





                          Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration:  BoxDecoration(

                                  color: const Color(0xff000000).withOpacity(0.46)



                              )
                          ),
                          Align(
                            alignment: const Alignment(0,0.5),

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
                            alignment: const Alignment(0,0),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'Bravo, le souvenir est enregistré !\nTu pourras le retrouver derrière\nune étoile du jeu degrattage,\ndans ton menu principal.',
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                                /*defining default style is optional */

                              ),

                              textAlign: TextAlign.center,
                            ),


                          ),
                          Align(
                            alignment: const Alignment(0,0.95),
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
                                    return const page_niveau2();
                                  },),);
                                },
                                child: const Text('Toucher pour continuer')),
                          )

                        ]
                    ),



                  ),


            ),
























          ),
        ),
      );
  }

  Widget buildTextField( String placeholder   ) {
    final focusNode = FocusNode();

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
