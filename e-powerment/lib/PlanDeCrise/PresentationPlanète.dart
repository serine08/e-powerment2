import 'package:e_empowerment/Slide3.dart';
import 'package:flutter/material.dart';


class PresentationPlanete extends StatefulWidget {
  const PresentationPlanete({Key? key}) : super(key: key);

  @override
  State<PresentationPlanete> createState() => _PresentationPlaneteState();
}

class _PresentationPlaneteState extends State<PresentationPlanete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Plan.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: const Color(0xff000000).withOpacity(0.46),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.77, -0.4),
                    child: Container(
                      width: 200,
                      height: 350,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.transparent),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.rectangle,
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("images/Poto2.png"),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 270,
                    left: 30,
                    right: 30,
                    child: SpeechBubble(
                      text:
                      'Sur cette planète, on va chercher à définir un état de crise psychique : à partir de quand tu te dis que c’est la crise, comment tu peux la prévenir et l’anticiper, qui peut t’entourer, comment la traverser...L’objectif est de profiter d’un moment où tu n’es pas en crise pour élaborer tes solutions.\n\n C’est parti !',
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.99),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Slide3();
                          }),
                        );
                      },
                      child: const Text('Taper pour passer'),
                    ),
                  ),
                ],
              ),
            ),
          ],
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

      padding: const EdgeInsets.only(top: 24,bottom: 24,right: 24,left: 24),
      decoration: BoxDecoration(

        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
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