import 'package:e_empowerment/plan%C3%A8te01/Niveau05/CustomArc.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/utils.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Slider_Widget extends StatefulWidget {

  final ValueChanged<double> onChanged;

  const Slider_Widget({super.key, required this.onChanged});



  @override
  _Slider_WidgetState createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  double progressVal = 0.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0,1),
            child: CustomArc(),
          ),
          Align(
            alignment: Alignment(0,1),
            child: SleekCircularSlider(
              min: 0,
              max: 120,
              initialValue: 22,
              appearance: CircularSliderAppearance(
                startAngle: 180,
                angleRange: 180,
                size: 300,
                customWidths: CustomSliderWidths(
                  trackWidth: 0,
                  shadowWidth: 0,
                  progressBarWidth: 1,
                  handlerSize: 15,
                ),
                customColors: CustomSliderColors(
                  hideShadow: true,
                  progressBarColor: Colors.transparent,
                  trackColor: Colors.transparent,
                  dotColor: Colors.white,

                ),
              ),
              onChange: (value) {
                setState(() {
                  progressVal = value;
                  widget.onChanged(value); // Appeler la fonction onChanged passée en paramètre
                });
              },
              innerWidget: (percentage) {
                String text = '';
                Color textColor = Colors.black;

                if (percentage <= 20) {
                  text = 'Je n’arrive pas à cerner mes limites.';
                  textColor = Colors.red.shade900;
                } else if (percentage <= 40) {
                  text = 'J’aimerais exprimer mes limites mais je n’y arrive pas.';
                  textColor = Colors.red;
                } else if (percentage <= 60) {
                  text = 'J’exprime ce que je veux ou ne veux pas mais ce n\'est pas clair, je sens que je suis confus·e';
                  textColor = Colors.orange;
                } else if (percentage <= 80) {
                  text = 'J’exprime ce que je veux ou ne veux pas mais c\'est difficile, c’est source d’angoisses et de conflits.';
                  textColor = Colors.yellow;
                } else if (percentage <= 100) {
                  text = 'J’exprime ce que je veux ou ne veux pas mais ça me demande de l’énergie et c’est source d’appréhension.';
                  textColor = Colors.lightGreen;
                } else {
                  text = 'J’exprime ce que je veux ou ne veux pas sans difficultés.';
                  textColor = Colors.green;
                }
                return  Align(
                    alignment: const Alignment(0,0.5),
                    child: Card(
                color: Colors.transparent,
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style:  TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor,

                          ),
                          textAlign: TextAlign.center,

                        ),
                      ),
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
