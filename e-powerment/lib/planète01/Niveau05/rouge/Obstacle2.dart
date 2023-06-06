import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/SouvenirQues.dart';
import 'package:flutter/material.dart';

import '../../Niveau2/Ciel02.dart';

class Obstacle2 extends StatefulWidget {
  const Obstacle2({Key? key}) : super(key: key);

  @override
  State<Obstacle2> createState() => _Obstacle2State();
}

class _Obstacle2State extends State<Obstacle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: const Color(0xff000000).withOpacity(0.46),
                ),
              ),
              Stack(
                children: [
                  const SizedBox(height: 100),
                  Align(
                    alignment: const Alignment(0, 0.5),
                    child: RichText(

                      text: TextSpan(

                        children: [
                          _buildListItem(" Je n’ai pas confiance en moi"),
                          _buildListItem(" J’ai l’impression que ce que je pense n’est pas très intéressant ni important"),
                          _buildListItem(" J’ai peur d’avoir l’air égoïste"),
                          _buildListItem(" J’ai envie qu’on m’apprécie"),
                          _buildListItem(" J’aime faire plaisir et j’aime aider"),
                          _buildListItem(" J’ai l’habitude de faire comme ça"),
                        ],
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Positioned(
                    top: 95,
                    left: 20,
                    right: 20,
                    child: SpeechBubble(
                      text: 'La liste des obstacles qui pourraient faire écho à ma situation :',
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                  ),

                  Positioned(
                    top: 30,
                    left: 100,
                    right: 10,
                    child: CustomPaint(
                      painter: CirclePainter(
                        circleSizes: [16, 12, 8], // Modify the sizes here
                        circlePositions: [
                          const Offset(100, 160), // Modify the positions here
                          const Offset(130, 200),
                          const Offset(160, 235),
                        ],
                        circleColor: Colors.white,
                      ),
                      child: Container(),
                    ),
                  ),
                  // Image of the character
                  Align(
                    alignment: const Alignment(0.85, -0.1),
                    child: Container(
                      width: 130,
                      height: 130,
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

                          return    SouvenirQuest();
                        },),);
                      }, icon: const Icon(Icons.navigate_next),
                      iconSize: 40,
                      color: Colors.white,


                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextSpan _buildListItem(String text) {
    return TextSpan(
      text: '• $text\n',
      style: const TextStyle(fontSize: 20),
    );
  }
}
