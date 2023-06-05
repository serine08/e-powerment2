
import 'package:e_empowerment/Slide5.dart';

import 'package:flutter/material.dart';




class Conseil2 extends StatefulWidget {
  const Conseil2({Key? key}) : super(key: key);

  @override
  State<Conseil2> createState() => _Conseil2State();
}

class _Conseil2State extends State<Conseil2> {

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

                     width: 350,
                      height: 300,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/zen.png"),
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
                        child: Text('Me calmer avant de m’exprimer',style: TextStyle(
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
