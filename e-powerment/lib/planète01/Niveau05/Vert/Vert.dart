
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Vert/vert02.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

import 'package:flutter/material.dart';






class Vert extends StatelessWidget {
  Vert({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false, // Empêcher le redimensionnement automatique du Scaffold
      body: SingleChildScrollView(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration:  const BoxDecoration(

              image: DecorationImage(
                image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover,

              ),
            ),

            child: Column(
              children: [
                Expanded(
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


                          const Positioned(
                            top: 90,
                            left: 20,
                            right: 20,
                            child: SpeechBubble(
                              text: 'Tu sais exprimer clairement tes limites dans cette situation, bravo !Pourtant, cette situation reste désagréable ou inconfortable. Ce n’est pas parce que tu arrives clairement à exprimer tes limites qu’elles sont respectées par les autres. Des fois il faut répéter, être plus ferme, ou alors fuir ou même se défendre !Raconte un souvenir au cours duquel tu as bien exprimé ta limite et elle a été respectée. Ce souvenir restera sur cette planète, tu peux venir l’écouter ou le relire, en rajouter d’autres pour te souvenir de tes réussites !',
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                            ),
                          ),

                          Positioned(
                            top: 250,
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
                            alignment: const Alignment(-0.6, 0.9),
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
                            alignment: const Alignment(-0.9,-0.9),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return   const Slide1N4rouge();
                                },),);
                              }, icon: const Icon(Icons.cancel),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          ),




                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return    vert02();
                                },),);
                              }, icon: const Icon(Icons.navigate_next),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          )
                        ]
                    ),



                  ),
                ),
              ],
            ),




          ),
        ),
      ),

    );

  }

  Widget buildTextField( String placeholder   ) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 8,vertical: 30),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,
          maxLines: null,

          onSaved: (String? value){
            String value = myController.text;
          },
          decoration: InputDecoration(





              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,

                ),

              ),

              enabledBorder:   OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.5

                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white
                  )
              ),
              fillColor: Colors.white,
              filled: true,

              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle:  TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500
              )

          ),



        ),
      ),

    );

  }
}
class SpeechBubble extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const SpeechBubble({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
class CirclePainter extends CustomPainter {
  final List<double> circleSizes;
  final List<Offset> circlePositions;
  final Color circleColor;

  CirclePainter({required this.circleSizes, required this.circlePositions, required this.circleColor});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < circleSizes.length; i++) {
      final circleSize = circleSizes[i];
      final circlePosition = circlePositions[i];

      final circlePaint = Paint()
        ..color = circleColor
        ..style = PaintingStyle.fill;

      canvas.drawCircle(circlePosition, circleSize, circlePaint);
    }
  }
  @override
  bool shouldRepaint(CirclePainter oldPainter) {
    return circleSizes != oldPainter.circleSizes ||
        circlePositions != oldPainter.circlePositions ||
        circleColor != oldPainter.circleColor;
  }
// Rest of the code...
}
