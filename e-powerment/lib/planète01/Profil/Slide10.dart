import 'package:e_empowerment/Slide2.dart';
import 'package:e_empowerment/Slide4.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Slide10 extends StatefulWidget {
  const Slide10({Key? key}) : super(key: key);

  @override
  State<Slide10> createState() => _Slide10State();
}

class _Slide10State extends State<Slide10> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/profil.png"),
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

                  child: Stack(

                    children: [

                      Align(
                        alignment: const Alignment(0,-0.2),
                        child: RichText(
                          text:  const TextSpan(
                            text: 'Ici tu retrouveras des\nfonctionalitées comme\nta',
                            style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),

                            /*defining default style is optional */
                            children: <TextSpan>[

                              TextSpan(
                                  text: ' malette à reconfort,\n', style:  TextStyle( color:Color(0xffA49BEC),fontSize:25,fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: 'tes', style: TextStyle( color:Colors.white ,fontSize:25, fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: ' notes, ', style:  TextStyle( color:Color(0xffA49BEC),fontSize:25,fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: 'ton', style: TextStyle( color:Colors.white ,fontSize:25, fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: ' journal de bord\n', style:  TextStyle( color:Color(0xffA49BEC),fontSize:25,fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: 'ou encore ton', style: TextStyle( color:Colors.white ,fontSize:25, fontWeight: FontWeight.bold,)),
                              TextSpan(
                                  text: ' Suivi', style:  TextStyle( color:Color(0xffA49BEC),fontSize:25,fontWeight: FontWeight.bold,)),

                            ],
                          ),

                          textAlign: TextAlign.center,
                        ),
                      ),

                      Align(
                        alignment: const Alignment(0,0.6),
                        child: Container(


                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(

                              border:Border.all(width: 2,color: Colors.transparent ),


                              image:  const DecorationImage(

                                fit: BoxFit.cover,
                                image:AssetImage("images/momo.webp"),
                              ) ,
                            )
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0,0.9),
                        child: TextButton(

                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                              elevation: 20
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){

                                return   const Slide4();
                              },),);
                            },
                            child: const Text('Toucher pour continuer')),
                      )
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
