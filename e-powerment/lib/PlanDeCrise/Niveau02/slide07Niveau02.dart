import 'package:e_empowerment/PlanDeCrise/Niveau02/FinNiveau02.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau02/PageNiveau02.dart';
import 'package:flutter/material.dart';


class slide07Niveau02 extends StatefulWidget {
  const slide07Niveau02({Key? key}) : super(key: key);

  @override
  State<slide07Niveau02> createState() => _slide07Niveau02State();
}

class _slide07Niveau02State extends State<slide07Niveau02> with TickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fond.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:  Stack(
          children: [

            Center(
              child: Stack(
                children: [


                  Positioned(
                    top: 270,
                    left: 30,
                    right: 30,





                    child: SpeechBubble(
                      text:
                      'Quand je suis en crise : - les choses à faire qui peuvent m’apaiser : [réponses slide12]. - les endroits qui me font du bien : [réponses slide 13].',
                      textColor: Color(0xff962C08),
                    ),



                  ),

                  Align(
                    alignment:  Alignment(0.9,0.95),
                    child: IconButton(


                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    FinNiveau02();
                        },),);
                      }, icon: const Icon(Icons.navigate_next),
                      iconSize: 40,
                      color: Colors.white,


                    ),
                  )
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
            style: TextStyle(color: textColor, fontSize: 18,),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}