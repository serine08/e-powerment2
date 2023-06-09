import 'package:e_empowerment/PlanDeCrise/Niveau01/PageNiveau01.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau02/slide01Niveau02.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau03/slide02Niveau03.dart';
import 'package:flutter/material.dart';


class slide01Niveau03 extends StatefulWidget {
  const slide01Niveau03({Key? key}) : super(key: key);

  @override
  State<slide01Niveau03> createState() => _slide01Niveau03State();
}

class _slide01Niveau03State extends State<slide01Niveau03> with TickerProviderStateMixin {
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

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return slide02Niveau03(); // Make sure to use the correct class name for the next page
        }));
      }
    });
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
                              'Les directives anticipées en psychiatrie (DAP) sont un document que l’on rédige et quel’on peut transmettre à ses proches et aux professionnel·les de santé qui nous suivent. Lorsqu’on est en crise, il est parfois difficile voire impossible de communiquer nos besoins et nos désirs ; on peutalors vivre des choses violentes ou qui vont aggraver la crise au lieu de l’apaiser.',
                              backgroundColor: Colors.white,
                              textColor: Color(0xff962C08),
                            ),
                          ),
                        );
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