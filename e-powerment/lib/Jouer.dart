

import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/swipe.dart';

import 'package:flutter/material.dart';




class Jouer extends StatefulWidget {
  const Jouer({Key? key}) : super(key: key);

  @override
  State<Jouer> createState() => _JouerState();
}

class _JouerState extends State<Jouer> {

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

                Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.46)



                    )
                ),





                Stack(

                  children: [
                    const SizedBox(
                        height:200 ),
                    Align(
                      alignment: const Alignment(0,-0.5),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Ici, tu vas pouvoir faire la liste de tes qualités\net peut-être en découvrir de nouvelles.\nIl est important de connaître ses qualités.\nLes qualités définissent qui on est,\nelles composent notre nature profonde.\nLe simple fait d’exister nous garantit\nd’être doté de qualités.',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                        height:30 ),

                    const SizedBox(
                        height:50 ),
                    Align(
                      alignment: const Alignment(0,0.9),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12),
                            textStyle: const TextStyle(fontSize: 20),
                            elevation: 10,
                            backgroundColor: Colors.green,

                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                             return    Swipe();
                              //return NotesPage();
                            },),);
                          },
                          child: const Text('Jouer')),
                    )
                  ],
                ),


                Align(
                  alignment: const Alignment(0,0.395),

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

              ]
          ),



        ),
























      ),

    );
  }
}
