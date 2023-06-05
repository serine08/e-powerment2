
import 'package:e_empowerment/Slide5.dart';

import 'package:flutter/material.dart';




class Conseil5 extends StatefulWidget {
  const Conseil5({Key? key}) : super(key: key);

  @override
  State<Conseil5> createState() => _Conseil5State();
}

class _Conseil5State extends State<Conseil5> {

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
                      height: 300,
                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/miroir.png"),
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
                      height: 80,

                      child: const Center(
                        child: Text('M’entraîner avant, répéter avec qqn ou devant mon miroir, répéter les phrases dans ma tête',style: TextStyle(
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
