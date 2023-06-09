import 'package:e_empowerment/PlanDeCrise/Niveau01/slide02.dart';
import 'package:flutter/material.dart';


class slide01 extends StatefulWidget {
  slide01({Key? key}) : super(key: key);

  @override
  State<slide01> createState() => _slide01State();
}
const Duration potoAnimationDuration = Duration(milliseconds: 500);
const Duration textAnimationDuration = Duration(milliseconds: 700);
class _slide01State extends State<slide01> with TickerProviderStateMixin {
  TextEditingController myController = TextEditingController();
  String? buttonText;

  List<String> buttonOptions = [
    'Je n’arrive plus à réfléchir',
    'Je suis tout le temps en colère',
    'J’ai peur des autres',
    'Je sens que les autres ont peur de moi',
    'Je n’ai rien envie de faire',
    'Je n’arrive plus à faire mes activités du quotidien',
    'Je ne peux pas aller travailler',
    'Je ne mange plus',
    'Je mange trop',
  ];
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
      end: Offset(1.5, 0),
    ).animate(_controller);

    _textTranslateAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-1.5, 0), // Move text downwards
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return slide02(); // Make sure to use the correct class name for the next page
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/fond.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(-0.9, -0.8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel),
                  iconSize: 40,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.1,
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16.0,
                  ),
                  children: buttonOptions.map((buttonText) {
                    return buttonWidget(buttonText);
                  }).toList(),
                ),
              ),
              Container(

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration:  BoxDecoration(

                      color: const Color(0xff000000).withOpacity(0.8)



                  )
              ),    Positioned(
                top: 305,
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
                          'A quel moment dirais-tu que tu es en crise ? Qu’est-ce qui te fait dire que tu es encrise ? Sélectionne ce qui correspond pour toi aux signaux',
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.scale(
                    scale: _scaleAnimation.value,
                    child: FractionalTranslation(
                      translation: _translateAnimation.value,
                      child: Align(
                        alignment: Alignment(-1, 1.4),
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

              Align(
                alignment: Alignment(0,- 0.2),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 18),
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
      ),
    );
  }

  Widget buttonWidget(String buttonText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(8),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          elevation: 10,
          backgroundColor: Colors.white,
          fixedSize: const Size(350, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
        },
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
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
        border: Border.all(
          color: Colors.blueAccent.shade100, // Set the color of the border here
          // Set the width of the border here
        ),
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