

import 'package:flutter/material.dart';




class Arbre03 extends StatefulWidget {
  const Arbre03({Key? key}) : super(key: key);

  @override
  State<Arbre03> createState() => _Arbre03State();
}

class _Arbre03State extends State<Arbre03> {

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
                        image: AssetImage("images/arbrejoie.png"),
                        fit:BoxFit.cover,

                      ),




                    )
                ),

                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Arbre de la joie',
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
                      text: 'Fier·e',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.25,-0.45),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Ravi·e',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3,-0.4),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Captivé·e',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: const Alignment(-0.55,-0.12),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Vivifié·e',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4,-0.05),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Surexcité·e',
                      style: TextStyle(color: Color(0xffFFCBE4), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),


                Align(
                  alignment: const Alignment(-0.5,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Motivé·e',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.1,-0.2),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Libre',
                      style: TextStyle(color: Color(0xffFFCBE4) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'En forme',
                      style: TextStyle(color: Color(0xffFFCBE4), fontSize: 24, fontWeight: FontWeight.bold),

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
