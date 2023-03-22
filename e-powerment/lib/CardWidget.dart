import 'dart:ffi';

import 'package:e_empowerment/globals.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_empowerment/globals.dart' as globals;

class CardWidget extends StatelessWidget {
  List data = [

    {"color": const Color(0xFFFFFFFF)},
    /*{"color": const Color(0xffff8f61)},
    {"color": const Color(0xff2ac3ff)},
    {"color": const Color(0xff5a65ff)},
    {"color": const Color(0xff96da45)},

    {"color": const Color(0xff7a54ff)},
    {"color": const Color(0xffff8f61)},
    {"color": const Color(0xff2ac3ff)},
    {"color": const Color(0xff5a65ff)},
    {"color": const Color(0xff96da45)},
*/
  ];


  final colorwhite = Colors.white;
  final  double _currentIndex=0;
  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: 500,
        width: 500,
        color: Colors.white,

        child: GridView.builder(

          itemCount: data.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            // crossAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top:4.0,right: 4.0,left: 4.0),
              child: Expanded(
                child: Card(
                  //color: data[index]["color"],
                  color: Colors.deepPurple.shade50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '  Journal de board ',
                              style: TextStyle(color: Colors.deepPurple, fontSize: 30 , fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration:   BoxDecoration(
                              boxShadow: [

                              BoxShadow(
                               color: Colors.deepPurple.withOpacity(0.4),
                               )
                                          ],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  color: const Color.fromRGBO(255, 255, 255, 0.38)),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.deepPurple,
                                size: 30,
                              ),
                            )
                          ],
                        )
                        ,Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            child: Text('L\'Humeur '
                              ,style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.deepPurple.shade400),
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children : [
                            Container(
                             // alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('déprimant ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                             // alignment: Alignment.center,
                              padding: const EdgeInsets.only(right: 5),
                              child: Text('Triste ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              //  alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Neutre ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              //alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Sérenité ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              // alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(right: 5),
                              child: Text('Euphorie ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),


                          ],

                        ),

                        Container(
                           child: RatingBar.builder(
                            initialRating: 3,
                            itemCount: 5,
                             itemPadding: const EdgeInsets.symmetric(horizontal: 19.0),

                             itemBuilder: (context, index){
                              switch (index) {
                                case 0:
                                  return  const Icon(
                                    Icons.sentiment_very_dissatisfied,
                                    color: Colors.red,

                                  );

                                case 1:
                                  return  const Icon(
                                    Icons.sentiment_dissatisfied,
                                    color: Colors.orange,
                                  );
                                case 2:
                                  return  const Icon(
                                    Icons.sentiment_neutral,
                                    color: Colors.amber,
                                  );
                                case 3:
                                  return  const Icon(
                                    Icons.sentiment_satisfied,
                                    color: Colors.lightGreen,
                                  );
                                case 4:
                                  return  const Icon(
                                    Icons.sentiment_very_satisfied,
                                    color: Colors.green,
                                  );
                                default:
                                  return Container();
                              }
                            },
                            onRatingUpdate: (rating) async {
                              final prefs = await SharedPreferences.getInstance();

                              final success = await prefs.remove('decimal');

                              await prefs.setDouble('decimal', rating);

                              globals.rating = rating;


                              //_currentIndex =;
                             // print("Hi " );
                             // print(prefs.getDouble('decimal'));

                            },

                          ),),

                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: Text('Les pensées  '
                            ,style: TextStyle(
                                fontSize: 25,
                                color: Colors.deepPurple.shade400),
                          ),
                        ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children : [
                            Container(
                              // alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Confusion ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              // alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Esprit Clair ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              //  alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Profusion ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),

                          ],

                        ),
                        Container(
                          child: RatingBar.builder(
                            initialRating: 3,
                            itemCount: 3,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 45.0),

                            itemBuilder: (context, index){
                              switch (index) {
                                case 0:
                                  return  const Icon(
                                    Icons.cloud,
                                    color: Colors.black54,

                                  );

                                case 1:
                                  return  const Icon(
                                    Icons.sunny,
                                    color: Colors.amber,
                                  );

                                case 2:
                                  return  const Icon(
                                    Icons.cyclone,
                                    color: Colors.red,
                                  );
                                default:
                                  return Container();
                              }
                            },
                            onRatingUpdate: (ratingP) async {


                              globals.ratingP = ratingP;

                              print(ratingP);
                            },

                          ),),

                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text('L\'Energie '
                    ,style: TextStyle(
                        fontSize: 25,
                        color: Colors.deepPurple.shade400),
                  ),
                ),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children : [
                            Container(
                              // alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text('Epuisement ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              // alignment: Alignment.center,
                              padding: const EdgeInsets.only(right: 8),
                              child: Text('Bien etre ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),
                            Container(
                              //  alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(right: 7),
                              child: Text('Agitation ',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.deepPurple.shade400),
                              ),
                            ),

                          ],

                        ),
                           Container(
                            child: RatingBar.builder(
                    initialRating: 3,
                    itemCount: 3,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 45.0),

                    itemBuilder: (context, index){
                      switch (index) {
                        case 0:
                          return  const Icon(
                            Icons.battery_0_bar,
                            color: Colors.red,

                          );
                        case 1:
                          return  const Icon(
                            Icons.battery_full_rounded,
                            color: Colors.green,
                          );
                        case 2:
                          return  const Icon(
                            Icons.battery_alert,
                            color: Colors.amber,
                          );

                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) async {
                      final prefs = await SharedPreferences.getInstance();

                      final success = await prefs.remove('decimal');

                      await prefs.setDouble('decimal', ratingE);

                      globals.ratingE = ratingE;

                      print(rating);
                    },

                  ),),

                      ],
                    ),
                  ),
                ),




              ),

            );

          },
        ),

      ),



    );

  }
}


