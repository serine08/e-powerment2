import 'package:e_empowerment/Niveau3.dart';
import 'package:e_empowerment/Slide1.dart';
import 'package:e_empowerment/Slide5_3.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';


import 'Slide5.dart';


class Slide7 extends StatefulWidget {
  const Slide7({Key? key}) : super(key: key);

  @override
  State<Slide7> createState() => _Slide7State();
}

class _Slide7State extends State<Slide7> {



  late String value;
  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover
            ),
          ),












            child: Center(





              child: Stack(

                children: [




                  Align(
                    alignment: const Alignment(-0.5,-0.85),
                    child: RichText(
                      text:  const TextSpan(
                        text: 'Quelles compétences\nte correspondent ?',
                        style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                        /*defining default style is optional */

                      ),

                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/Plan-Nu-2.png"),

                      )
                  ),

                  ),
                  Align(
                      alignment: const Alignment(-0.2,-0.4),
                      child: buildTextField('Ajouter une compétence...')),
                  Align(
                    alignment: const Alignment(0.9,0.98),
                    child: IconButton(


                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    Niveau3();
                        },),);
                      }, icon: const Icon(Icons.navigate_next),
                      iconSize: 40,
                      color: Colors.white,


                    ),
                  )


                ],
              ),







            ),

        )
    );
  }

  Widget buildTextField( String placeholder ) {
    return  Padding(
      padding:  EdgeInsets.zero,


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,

          onSaved: (String? value){
            String value = myController.text;
            print('La valeur saisie est : $value');
          },
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only( left: 30),


              border: InputBorder.none,





              // floatingLabelBehavior: FloatingLabelBehavior.always,
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
