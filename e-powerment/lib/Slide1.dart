import 'package:e_empowerment/Slide2.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Galaxy.dart';

class Slide1 extends StatefulWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {

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
                                  text: 'Bienvenue dans \n',
                                  style: TextStyle(color: Colors.white , fontSize: 40 , fontWeight: FontWeight.bold),

                                  /*defining default style is optional */
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'ton ', style: TextStyle( color:Colors.white ,fontSize:40, fontWeight: FontWeight.bold,)),
                                    TextSpan(
                                        text: 'Univers ', style:  TextStyle( color:Color(0xffA49BEC),fontSize:40,fontWeight: FontWeight.bold,)),
                                    TextSpan(
                                        text: '!', style: TextStyle( color:Colors.white ,fontSize:40, fontWeight: FontWeight.bold,)),


                                  ],
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
                              ),const SizedBox(
                                  height:60 ),
                              TextButton(

                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.all(16.0),
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){

                                      return   const Slide2();
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
