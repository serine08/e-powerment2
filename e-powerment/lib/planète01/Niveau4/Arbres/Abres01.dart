
import 'package:e_empowerment/Slide5.dart';

import 'package:flutter/material.dart';




class Arbre01 extends StatefulWidget {
  const Arbre01({Key? key}) : super(key: key);

  @override
  State<Arbre01> createState() => _Arbre01State();
}

class _Arbre01State extends State<Arbre01> {

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


                      decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/arbrecolere.png"),
                          fit:BoxFit.cover,

                        ),




                      )
                  ),

                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Arbre de la colère',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0,-0.56),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Ronchon',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.25,-0.45),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Irrité',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3,-0.4),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Frustré',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: const Alignment(-0.55,-0.12),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Jaloux',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4,-0.05),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Enervé',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),


                Align(
                  alignment: const Alignment(-0.5,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Dégoûté',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.1,-0.2),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Tendu',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Furieux',
                      style: TextStyle(color: Color(0xffFEA9A9), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),






              ]
          ),



        ),
























      ),

    );
  }
}
