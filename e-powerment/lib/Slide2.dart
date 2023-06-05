import 'package:e_empowerment/Slide3.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Galaxy.dart';

class Slide2 extends StatefulWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  State<Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<Slide2> {

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


                Center(

                  child: Column(

                    children: [
                      const SizedBox(
                          height:200 ),
                      RichText(
                        text:  const TextSpan(
                          text: 'Ici tu pourras \n explorer différentes \n partie de ta personnalité',
                          style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                          height:40 ),
                      Container(


                          width: 200,
                          height: 200,
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
                      const SizedBox(
                          height:80 ),
                      TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return   const Slide3();
                            },),);
                          },
                          child: const Text('Toucher pour continuer'))
                    ],
                  ),
                ),



              ]
          ),



        ),
























      ),

    );
  }
}
