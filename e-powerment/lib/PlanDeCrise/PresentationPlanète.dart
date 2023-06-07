import 'package:e_empowerment/PlanDeCrise/Niveau01/PageNiveau01.dart';
import 'package:flutter/material.dart';

import '../planète01/Niveau05/Orange/Orange1.dart';

class PresentationPlanete extends StatefulWidget {
  const PresentationPlanete({Key? key}) : super(key: key);

  @override
  State<PresentationPlanete> createState() => _PresentationPlaneteState();
}

class _PresentationPlaneteState extends State<PresentationPlanete> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _translateAnimation;
  late Animation<Offset> _textTranslateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(_controller);

    _translateAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -1.5),
    ).animate(_controller);

    _textTranslateAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, 1.5), // Move text downwards
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (BuildContext context, Widget? child) {
                      return Transform.scale(
                        scale: _scaleAnimation.value,
                        child: FractionalTranslation(
                          translation: _translateAnimation.value,
                          child: Align(
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
                                  image: AssetImage("images/Poto02.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  Positioned(
                    top: 270,
                    left: 30,
                    right: 30,
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (BuildContext context, Widget? child) {
                        return Transform.scale(
                            scale: _scaleAnimation.value,
                            child: FractionalTranslation(
                            translation: _textTranslateAnimation.value,
                          child: const SpeechBubble(
                            text:
                            'Sur cette planète, on va chercher à définir un état de crise psychique : à partir de quand tu te dis que c’est la crise, comment tu peux la prévenir et l’anticiper, qui peut t’entourer, comment la traverser...L’objectif est de profiter d’un moment où tu n’es pas en crise pour élaborer tes solutions.\n\n C’est parti !',
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                          ),
                            ) );
                      },

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
                        setState(() {
                          _controller.forward();
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    pageNiveau01();
                        },),);
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
