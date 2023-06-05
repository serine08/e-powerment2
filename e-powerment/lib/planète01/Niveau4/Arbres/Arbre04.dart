

import 'package:flutter/material.dart';




class Arbre04 extends StatefulWidget {
  const Arbre04({Key? key}) : super(key: key);

  @override
  State<Arbre04> createState() => _Arbre04State();
}

class _Arbre04State extends State<Arbre04> {

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
                        image: AssetImage("images/arbrepeur.png"),
                        fit:BoxFit.cover,

                      ),




                    )
                ),

                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Arbre de la peur',
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
                      text: 'Inquiet·e',
                      style: TextStyle(color: Color(0xffA9FEEF) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.25,-0.45),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Confus·e',
                      style: TextStyle(color: Color(0xffA9FEEF), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3,-0.4),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Débordé·e',
                      style: TextStyle(color:Color(0xffA9FEEF) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: const Alignment(-0.55,-0.12),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Anxieux·se',
                      style: TextStyle(color: Color(0xffA9FEEF) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4,-0.05),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Nerveux·se',
                      style: TextStyle(color: Color(0xffA9FEEF), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),


                Align(
                  alignment: const Alignment(-0.5,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Réservé·e',
                      style: TextStyle(color: Color(0xffA9FEEF) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.1,-0.2),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Gêné·e',
                      style: TextStyle(color: Color(0xffA9FEEF), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Hésitant·e',
                      style: TextStyle(color: Color(0xffA9FEEF), fontSize: 24, fontWeight: FontWeight.bold),

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
