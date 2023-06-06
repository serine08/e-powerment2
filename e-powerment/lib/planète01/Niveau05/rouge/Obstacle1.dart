import 'package:flutter/material.dart';

import '../../Niveau2/Ciel02.dart';

class Obstacle1 extends StatefulWidget {
  const Obstacle1({Key? key}) : super(key: key);

  @override
  State<Obstacle1> createState() => _Obstacle1State();
}

class _Obstacle1State extends State<Obstacle1> {
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
                           _buildListItem(" J’ai peur d’être rejeté·e"),
                          _buildListItem(" J’ai peur qu’on me critique"),
                          _buildListItem(" J’ai peur de m’exprimer en public"),
                          _buildListItem(" Je crains l’autorité"),
                          _buildListItem(" J’ai peur des représailles"),
                          _buildListItem(" Je suis timide"),
                        ],
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),    const Positioned(
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
