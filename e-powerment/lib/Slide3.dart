import 'package:e_empowerment/Slide4.dart';
import 'package:e_empowerment/plan%C3%A8te01/Profil/Slide10.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide09.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Galaxy.dart';

class Slide3 extends StatefulWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  State<Slide3> createState() => _Slide3State();
}

class _Slide3State extends State<Slide3> {

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
                        alignment: Alignment(-0.9,0.2),
                        child: RichText(
                          text:  const TextSpan(
                            text: 'Je te propose de \n commencer la \n visite par ton \n vaisseau spatial ',
                            style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),

                            /*defining default style is optional */

                          ),

                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                          height:30 ),
                      Align(
                        alignment: const Alignment(1,0.9),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context){

                               // return Slide4();
                                return Slide10();
                              },),);
                            },
                            child: const Text('Toucher pour continuer')),
                      )
                    ],
                  ),


                Align(
                  alignment: const Alignment(-0.95,1),
                  child: Container(

                      width: 200,
                      height: 200,
                      decoration:  BoxDecoration(

                          color: const Color(0xffA49BEC).withOpacity(0.46),
                        shape: BoxShape.circle,


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
