

import 'package:e_empowerment/CardWidget.dart';
import 'package:e_empowerment/Humeur.dart';
import 'package:e_empowerment/Pens%C3%A9es.dart';

import 'package:e_empowerment/LineChart.dart';

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_empowerment/globals.dart' as globals;
import 'package:e_empowerment/notes_database.dart';


class HomePage extends StatefulWidget {
    const HomePage ({Key? key}) : super (key: key);





  @override
   State<HomePage> createState() => _HomePageState();
}
 double _counter = 0;

Future<double> _loadCounter() async {
  final prefs = await SharedPreferences.getInstance();

    _counter = await prefs.getDouble('decimal')!;
    print("Load");
    print(_counter);

    return _counter;

}

Future addHumer() async {

  final humer = Humeur(
    id : hum.length+1,
    Rating : globals.rating.round(),
    date: DateTime.now(),
  );

  final HM = Humeur(
    Rating : globals.rating.round(),
    date: DateTime.now(),
  );

  List<Humeur> humTemp = [];
  hum.add(humer);

  int Ind  = hum.length - 7;

  while(Ind > 0 ) {
    hum.removeAt(0);
    Ind--;
  }



    int k  = 1;
  for (var i in hum){

    final h = Humeur(
      id : i.id,
      Rating : i.Rating,
      date: i.date,
      place: k
    );

    k++;

    humTemp.add(h);





  }

  hum = humTemp;




  await NotesDatabase.instance.createH(HM);
}


late List<Humeur> hum;
late List<Pensee> pensee;

Future addPensee() async {
   var pense = Pensee(
     id : pensee.length+1,
    RatingP : globals.ratingP.round(),
    date: DateTime.now(),
  );


   var p = Pensee(
     RatingP : globals.ratingP.round(),
     date: DateTime.now(),
   );






   List<Pensee> pensTemp = [];
   pensee.add(pense);

   int Ind  = pensee.length - 7;

   while(Ind > 0 ) {
     pensee.removeAt(0);
     Ind--;
   }



   int k  = 1;
   for (var i in pensee){

     final pe = Pensee(
         id : i.id,
         RatingP : i.RatingP,
         date: i.date,
         place: k
     );

     k++;

     pensTemp.add(pe);





   }

   pensee = pensTemp;




   await NotesDatabase.instance.createP(p);


}

class _HomePageState extends State<HomePage> {


   refreshNotes() async {




      hum = await NotesDatabase.instance.ReadAllHumeur();

      int Ind  = hum.length - 7;

      while(Ind > 0 ){

        hum.removeAt(0);
        Ind--;



      }

      List<Humeur> humTemp = [];

      int k  = 1;
      for (var i in hum){


        final h = Humeur(
            id : i.id,
            Rating : i.Rating,
            date: i.date,
            place: k
        );

        k++;

        humTemp.add(h);


        hum = humTemp;

        print("Humer : ${h.place} ,  ${h.date} , ${h.Rating} ");


      }



      List<Pensee> pensTemp = [];

      pensee = await NotesDatabase.instance.ReadAllPensee();



      setState((){});





  }

   refreshPensee() async {





  }




  @override
  void initState() {
    refreshNotes();
    refreshPensee();
    _loadCounter();
    super.initState();

  }





  @override
  // TODO: implement widget
  Widget build (BuildContext context) {




    return  Scaffold(
backgroundColor: Colors.white,



      body:Column(

          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child :        Column(
                children: [
                  CardWidget(),

                      CustomButton(

                        buttonText: 'Enregistrer',
                        onPressed: () {
                          print("current index ${globals.rating}");

                          addHumer();
                          addPensee();


                          refreshNotes();



                          Navigator.of(context).push(DismissibleDialog<void>()); // Do something when the button is pressed.
                        },
                        buttonColor: Colors.deepPurple,
                        textColor: Colors.white,
                        borderRadius: 20.0,
                        // height: 60.0,
                        //   width: 40,

                      ),
                    ],
                  ),

            )
                ],
              ),


            );











  }
}
class DismissibleDialog<T> extends PopupRoute<T> {
  @override
  Color? get barrierColor => Colors.black.withAlpha(0x50);

  // This allows the popup to be dismissed by tapping the scrim or by pressing
  // the escape key on the keyboard.
  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => 'Dismissible Dialog';

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);


  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Center(

          // Provide DefaultTextStyle to ensure that the dialog's text style
          // matches the rest of the text in the app.
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium!,
            // UnconstrainedBox is used to make the dialog size itself
            // to fit to the size of the content.

              child:
                  Column(
                    children:[

                     Container(
                       alignment: Alignment.bottomLeft,
                       margin: const EdgeInsets.only(top: 40),
                       child: Column(

                           children: [

                                    Container(

                                   decoration: const BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.all(Radius.circular(20)),),
                                      padding: const EdgeInsets.all(10),

                                      child: const Text('Humeur',style: TextStyle(color: Colors.white),),

                              ),

              Container(

                      decoration: const BoxDecoration(

                            color: Colors.white,


                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 2),
                      padding: const EdgeInsets.only(top: 5,bottom: 5),

                      child :        LineChartWidget(hum),


              ),
                           ],
          ),


                    ), Container(

                        decoration: const BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.all(Radius.circular(20)),),
                        padding: const EdgeInsets.all(10),

                        child: const Text('Pensée',style: TextStyle(color: Colors.white),),

                      ),

                      Container(


                        decoration: const BoxDecoration(

                            color: Colors.white,


                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        margin: const EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 2),
                        padding: const EdgeInsets.only(top: 5,bottom: 5),

                        child :        LineChartWidgetP(pensee),

                      )      ]
                  ),

              ),


          );


  }
}




class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final double height;
  final double width;

  const CustomButton({super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.height = 20.0,
    this.width = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      //height: height,
      //width: width,

        padding: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
            ),
          ),
        ),
      );

  }


}

