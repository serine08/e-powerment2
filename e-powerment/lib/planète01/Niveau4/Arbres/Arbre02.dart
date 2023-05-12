
import 'package:flutter/material.dart';




class Arbre02 extends StatefulWidget {
  const Arbre02({Key? key}) : super(key: key);

  @override
  State<Arbre02> createState() => _Arbre02State();
}

class _Arbre02State extends State<Arbre02> {

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
                        image: AssetImage("images/arbretristesse.png"),
                        fit:BoxFit.cover,

                      ),




                    )
                ),

                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Arbre de la tristesse',
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
                      text: 'Fatigué',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.25,-0.45),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Sombre',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3,-0.4),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'seul',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: const Alignment(-0.55,-0.12),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Ennui',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4,-0.05),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Impuissant',
                      style: TextStyle(color: Color(0xffA9B7FE), fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),


                Align(
                  alignment: const Alignment(-0.5,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'vide',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.1,-0.2),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Perdu',
                      style: TextStyle(color: Color(0xffA9B7FE) , fontSize: 24, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7,-0.3),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Déprimé',
                      style: TextStyle(color: Color(0xffA9B7FE), fontSize: 24, fontWeight: FontWeight.bold),

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
