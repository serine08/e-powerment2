
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Arbres/ArbresSwipe.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';




class IntroArbre extends StatefulWidget {
  const IntroArbre({Key? key}) : super(key: key);

  @override
  State<IntroArbre> createState() => _IntroArbreState();
}

class _IntroArbreState extends State<IntroArbre> {
  final _controller =PageController();
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
                  alignment: const Alignment(0,-0.83),
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
                  alignment: const Alignment(0,-0.58),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Ronchon',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.3,-0.49),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Irrité',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.3,-0.45),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Frustré',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),

                Align(
                  alignment: const Alignment(-0.55,-0.15),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Jaloux',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.4,-0.1),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Enervé',
                      style: TextStyle(color: Color(0xffFEA9A9) , fontSize: 25, fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: const Alignment(0,0.9),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect:  const SwapEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.white38,
                        dotHeight: 20,
                        dotWidth: 20
                    ),
                  ),
                ),

                Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.46)



                    )
                ),




                Stack(

                  children: [

                    Align(
                      alignment: const Alignment(0.1,-0.3),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Ici tu peux consulter les arbres des\némotions, ils peuvent peut être\n t\'aider à mettre des mots sur ce que\ntu ressens.',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),

                    Align(
                      alignment: const Alignment(0,0.78),
                      child: TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(fontSize: 16),
                            elevation: 10,


                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return    ArbresSwipe();
                            },),);
                          },
                          child: const Text('Toucher pour continuer')),
                    ),

                  ],
                ),


                Align(
                  alignment: const Alignment(0.12,0.27),

                  child: Container(

                      width: 161,
                      height: 161,
                      decoration:   const BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("images/momo.webp"),
                          fit:BoxFit.cover,

                        ),

                        shape: BoxShape.rectangle,


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
