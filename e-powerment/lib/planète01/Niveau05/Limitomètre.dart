

import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Orange1.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/SliderWidget.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Vert/Vert.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/page_niveau5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Aide.dart';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';



class Limitometre extends StatefulWidget {
  const Limitometre({Key? key}) : super(key: key);

  @override
  State<Limitometre> createState() => _LimitometreState();
}

class _LimitometreState extends State<Limitometre> {
  double sliderValue = 0.0;


  void handleSliderChange(double value) {
    setState(() {
      sliderValue = value;
    });
  }
  void handleNextButtonPress(BuildContext context) {
    if (sliderValue <= 20) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Aide(),
        ),
      );
    }
   else if (sliderValue <= 40) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Aide(),
        ),
      );
    }
    else if (sliderValue <= 60) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Orange1(),
        ),
      );
    }   else if (sliderValue <= 80) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Orange1(),
        ),
      );
    }
 else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Vert(),
        ),
      );
      // Handle the case for values above 75 if needed
    }
  }


  Widget slider  = SleekCircularSlider(
    appearance:CircularSliderAppearance(),
    initialValue:25 ,
    onChange: (double value){
      print(value);
    },
  );
  Widget Slider1 =SleekCircularSlider(
    appearance: CircularSliderAppearance(
      customColors: CustomSliderColors(trackColor: Colors.white,progressBarColors:[
  Colors.green, Colors.lightGreen, Colors.yellow, Colors.orange,  Colors.red, Colors.red.shade700,
      ],shadowMaxOpacity: 10.0 ),
      infoProperties: InfoProperties(
          topLabelText: 'Running'
      ),
    ),
    initialValue:0 ,
    onChange:(double value){
      print(value);
    } ,
  );
  Widget Slider2 =SleekCircularSlider(
    appearance:  CircularSliderAppearance(
      spinnerMode: true,
      size: 20.0,
      customWidths: CustomSliderWidths(trackWidth: 10.0,shadowWidth:5.0 ),

    ),
    initialValue:90 ,
    onChange:(double value){
      print(value);
    } ,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
            fit:BoxFit.cover,

          ),
        ),

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





                Stack(

                  children: [



                    Align(
                      alignment: const Alignment(-0.9,-0.9),
                      child: IconButton(


                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){

                            return   const page_niveau5();
                          },),);
                        }, icon: const Icon(Icons.cancel),
                        iconSize: 40,
                        color: Colors.white,


                      ),
                    ),

                    Align(
                      alignment: const Alignment(0,-0.65),
                      child: RichText(
                        text:  const TextSpan(
                          text: 'Est-ce que tu penses avoir exprimé ta limite,\net comment ? Regarde toutes les réponses possibles, réfléchis à ta situation et essaie de placer le curseur là où tu penses te trouver.',
                          style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                          /*defining default style is optional */

                        ),

                        textAlign: TextAlign.center,
                      ),
                    ),




                Align(
                  alignment: const Alignment(0,-0.2),

                  child: Container(

                      width: 161,
                      height: 161,
                      decoration:   const BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("images/momo.webp"),
                          fit:BoxFit.cover,

                        ),

                        shape: BoxShape.rectangle,


                      )
                  ),

                ),
                    Align(

                      child: Slider_Widget(
                        onChanged: handleSliderChange,


                      ),

                    ),
                    Align(
                      alignment: const Alignment(0.9,0.95),
                      child: IconButton(


                        onPressed: (){
                          handleNextButtonPress(context);

                        }, icon: const Icon(Icons.navigate_next),
                        iconSize: 40,
                        color: Colors.white,


                      ),
                    )
                  ],
                ),
              ]
          ),



        ),
























      ),

    );
  }
}
