import 'package:e_empowerment/Slide4.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/page_niveau1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/page_niveau.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Galaxy.dart';

class Slide4 extends StatefulWidget {
  const Slide4({Key? key}) : super(key: key);

  @override
  State<Slide4> createState() => _Slide4State();
}

class _Slide4State extends State<Slide4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/Plan.png"),
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
                      alignment: const Alignment(0.9,-0.1),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Partons explorer la \n première planète ! ',
                          style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                        height:30 ),
                    Align(
                      alignment: const Alignment(-0.9,0.3),
                      child: Container(


                          width: 145,
                          height: 145,
                          decoration: BoxDecoration(

                            border:Border.all(width: 2,color: Colors.transparent ),
                            boxShadow: [
                              BoxShadow(

                                  spreadRadius :2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1)
                              ),

                            ],
                            shape: BoxShape.rectangle,
                            image:  const DecorationImage(

                              fit: BoxFit.cover,
                              image:AssetImage("images/momo.webp"),
                            ) ,
                          )
                      ),
                    ),
                    const SizedBox(
                        height:50 ),
                    Align(
                      alignment: const Alignment(0,1),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: (){

                          },
                          child: const Text('Toucher la planète pour continuer')),
                    )
                  ],
                ),


                Align(
                  alignment: const Alignment(0.89,0.395),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return const Niveau();
                      },),);
                    },
                    child: Container(

                        width: 161,
                        height: 161,
                        decoration:   BoxDecoration(
                          boxShadow: [
                            BoxShadow(

                                spreadRadius :10,
                                blurRadius: 10,
                                color: Colors.white.withOpacity(0.3)
                            ),

                          ],
                          image: const DecorationImage(
                            image: AssetImage("images/1.png"),
                            fit:BoxFit.cover,

                          ),

                          shape: BoxShape.circle,


                        )
                    ),
                  ),
                ),

              ]
          ),



        ),
























      ),

    );
  }
}
