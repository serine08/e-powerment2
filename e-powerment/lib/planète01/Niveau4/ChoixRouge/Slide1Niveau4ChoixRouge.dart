

import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/Ciel_Besoin.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/IntroArbres.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01.dart';

import 'package:flutter/material.dart';




class Slide1N4rouge extends StatefulWidget {
  const Slide1N4rouge({Key? key}) : super(key: key);

  @override
  State<Slide1N4rouge> createState() => _Slide1N4rougeState();
}

class _Slide1N4rougeState extends State<Slide1N4rouge> {

  bool _isClicked = false;
  bool _isClicked2=false;
  int index=0;

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

                    Align(
                      alignment: const Alignment(0,-0.4),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Ces questions peuvent t\'aider à y voir\nplus clair, je te propose d\'en choisir une\n et d\'y répondre juste après',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),

                    Align(
                      alignment: const Alignment(0,0),

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: _isClicked2 ? Colors.deepPurple : Colors.transparent,
                            width: 4.0,
                          ),
                        ),
                        child: TextButton(

                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(5),
                                textStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                elevation: 10,
                                backgroundColor: Colors.white38,
                                fixedSize: const Size(380, 60),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                            ),
                            onPressed: (){
                              setState(() {
                                _isClicked2 = !_isClicked2;
                                 index=1;
                              });


                            },
                            child: const Text('Qu\'est ce que tu aimerais vivre et qui ne se\npasse pas en ce moment?',textAlign: TextAlign.center,)),
                      ),

                    ),



                    Align(
                      alignment: const Alignment(0,0.3),

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: _isClicked ? Colors.deepPurple : Colors.transparent,
                              width: 4.0,
                            ),
                          ),
                          child: TextButton(

                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(5),
                                  textStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                  elevation: 10,
                                  backgroundColor: Colors.white38,
                                  fixedSize: const Size(380, 70),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                              ),
                              onPressed: (){
                                setState(() {
                                  _isClicked = !_isClicked;
                                  index=2;
                                });
                              },
                              child: const Text('Qu\'est ce que tu aimerais qu\'il se passe? \nEt si cela se passait,quel besoin serait\nnourri?',textAlign: TextAlign.center,)),
                        ),

                    ),

                    Align(
                      alignment: const Alignment(0.8,0.75),
                      child: TextButton(

                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(12),
                              textStyle: const TextStyle(fontSize: 20),
                              elevation: 10,
                              backgroundColor: Colors.red,
                              fixedSize: const Size(150, 100),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return    CielBesoin();
                            },),);
                          },
                          child: const Text('Consulter la liste de mes besoins',textAlign: TextAlign.center,)),
                    ),
                    Align(
                      alignment: const Alignment(-0.8,0.75),
                      child: TextButton(

                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(12),
                              textStyle: const TextStyle(fontSize: 20),
                              elevation: 10,
                              backgroundColor: Colors.green,
                              fixedSize: const Size(150, 100),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   const IntroArbre();
                            },),);
                          },
                          child: const Text('Consulter arbres d\'émotions',textAlign: TextAlign.center,)),
                    )
                  ],
                ),


                Align(
                  alignment: const Alignment(0,-0.9),

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
                  alignment: const Alignment(0.92,0.99),
                  child: IconButton(


                    onPressed: (){
                      if (index==1){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    question01();
                        },),);
                      }
                      else if (index==2){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    question01();
                        },),);
                      }

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
}
