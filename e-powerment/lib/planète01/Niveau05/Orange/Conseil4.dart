
import 'package:e_empowerment/Slide5.dart';

import 'package:flutter/material.dart';




class Conseil4 extends StatefulWidget {
  const Conseil4({Key? key}) : super(key: key);

  @override
  State<Conseil4> createState() => _Conseil4State();
}

class _Conseil4State extends State<Conseil4> {

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
                  alignment: Alignment(0,-0.3),
                  child: Container(

                     width: 400,
                       height: 340,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/therapeute.png"),
                          fit:BoxFit.contain,

                        ),




                      )
                  ),
                ),

                Align(
                  alignment: const Alignment(0,0.5),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),

                      width: 350,
                      height: 70,

                      child: const Center(
                        child: Text('Prendre le temps de réfléchir, seul.e ou en parler à un.e proche, des ami.e.s, mon.ma thérapeute',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),textAlign: TextAlign.center,),
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
