

import 'package:flutter/material.dart';

class MySliderApp extends StatefulWidget {
  const MySliderApp({Key? key}) : super(key: key);

  @override
  State<MySliderApp> createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: Column(


mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

       // Text(_currentValue.toString(),style: TextStyle(fontSize: 20),),
SliderTheme(
    data: SliderThemeData(
      thumbColor: Colors.deepPurple.shade300,
      thumbShape:RoundSliderThumbShape(enabledThumbRadius: 10),


    ), child: Slider(
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.deepPurple.shade100,
          thumbColor: Colors.deepPurple.shade300,


          value: _currentValue,

          min: 0,
          max: 15,
          divisions: 2,
          onChanged: ( value) {
            setState(() {
             _currentValue= value;
            });
          },


        ),),
      ],



         )
     );






  }
}






