import 'package:e_empowerment/PlanDeCrise/Niveau01/PageNiveau01.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau02/PageNiveau02.dart';
import 'package:flutter/material.dart';


class FinNiveau extends StatefulWidget {
  const FinNiveau({Key? key}) : super(key: key);

  @override
  State<FinNiveau> createState() => _FinNiveauState();
}

class _FinNiveauState extends State<FinNiveau> with TickerProviderStateMixin {




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
                              'Je sens que je vais être en crise quand [réponses slide 5].\nUne crise peut se déclencher parce que [réponses slide 6].\nJe sais que [réponses slide 7] peut aggraver une crise',
                         textColor: Color(0xff962C08),
                            ),



                  ),

                  Align(
                    alignment:  Alignment(0.9,0.95),
                    child: IconButton(


                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    pageNiveau02();
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