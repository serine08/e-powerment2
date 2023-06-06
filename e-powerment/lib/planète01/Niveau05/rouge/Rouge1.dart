
import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Rouge2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Slide2Niveau4.dart';

import 'package:flutter/material.dart';

import '../../Niveau2/Ciel02.dart';




class Rouge1 extends StatefulWidget {
  const Rouge1({Key? key}) : super(key: key);

  @override
  State<Rouge1> createState() => _Rouge1State();
}

class _Rouge1State extends State<Rouge1> {

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

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration:  BoxDecoration(

                        color: const Color(0xff000000).withOpacity(0.46)



                    )
                ),





                Stack(

                  children: [
                    const SizedBox(
                        height:200 ),





                    const Positioned(
                      top: 180,
                      left: 20,
                      right: 20,
                      child: SpeechBubble(
                        text: 'C’est souvent difficile de refuser ou de dire non, parfois encore plus avec nos proches ou autravail. On ne sait pas toujours clairement ce qu’on ressent. Alors ne t’inquiète pas si tu n’y arrivespas, c’est un exercice et ça s’apprend !',
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                      ),
                    ),

                    Positioned(
                      top: 190,
                      left: 40,
                      right: 40,
                      child: CustomPaint(
                        painter: CirclePainter(
                          circleSizes: [16, 12, 8], // Modify the sizes here
                          circlePositions: [
                            const Offset(160, 160), // Modify the positions here
                            const Offset(130, 200),
                            const Offset(100, 235),
                          ],
                          circleColor: Colors.white,
                        ),
                        child: Container(),
                      ),
                    ),
                    // Image of the character
                    Align(
                      alignment: const Alignment(-0.7, 0.65),
                      child: Container(
                        width: 161,
                        height: 161,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/momo.webp"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.9,0.95),
                      child: IconButton(


                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){

                            return    Rouge2();
                          },),);

                        }, icon: const Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.white,


                      ),
                    )

              ]
          ),

]

        ),


      ),
    ),
    );
  }
}
