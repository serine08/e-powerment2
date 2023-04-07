import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide04.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../pages/onboarding_screen.dart';

class Slide03 extends StatelessWidget {
  const Slide03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        padding: const EdgeInsets.only(left:15,top:40,right:15),
        child:  GestureDetector(
            onTap : () {
              FocusScope.of(context).unfocus();
            },
            child :ListView(
              children:  [

                const SizedBox(
                    height:20 ),
                Center(
                    child:Stack(

                      children: [
                        Center(
                          child: Stack(

                            children: [

                              Container(

                                width: double.infinity,
                                height: 250,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:Border.all(width: 2,color: Colors.white ),
                                  boxShadow: [
                                    BoxShadow(

                                        spreadRadius :2,
                                        blurRadius: 10,
                                        color: Colors.deepPurple.withOpacity(0.1)
                                    ),

                                  ],
                                  shape: BoxShape.rectangle,

                                ),
                                padding: EdgeInsets.all(60),

                                child: const Text("Ici, tu vas pouvoir faire la liste des qualités et peut-etre en decouvrir de nouvelles. Il est important de connaitre ses qualités definissent qui on est, elles composent notre nature profonde.Le simple fait d'exister nous garantit d'etre doté de qualités",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                  ),textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
      ],),),
                        const SizedBox(
                            height:50 ),

                        Stack(

                            children:[
                              Container(

                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(

                                    border:Border.all(width: 4,color: Colors.white ),
                                    boxShadow: [
                                      BoxShadow(

                                          spreadRadius :2,
                                          blurRadius: 10,
                                          color: Colors.black.withOpacity(0.1)
                                      ),

                                    ],
                                    shape: BoxShape.circle,
                                    image:  const DecorationImage(

                                      fit: BoxFit.cover,
                                      image:AssetImage("images/momo.webp"),
                                    ) ,
                                  )
                              ),
                            ]
                          ),


                      ],
                    )
                  /*  child: TextField(

                      decoration: InputDecoration(
                        hintText: 'Pseudo...',
                      ),
                    ), */
                ),











            ),











      bottomNavigationBar: Container(
    // how to play with colors  type: BottomNavigationBarType.fixed, // This is all you need!

    color: Colors.deepPurple.shade100,
      child:  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 5),
        child: GNav(

          tabBorderRadius: 15,
          duration: const Duration(milliseconds: 800),
          backgroundColor: Colors.deepPurple.shade100 ,
          color: Colors.grey[800],
          iconSize: 24,

          activeColor: Colors.deepPurple,
          tabBackgroundColor: Colors.deepPurple.withOpacity(0.1),
          gap: 8,

          // here where it ends
          padding: const EdgeInsets.all(16),
          tabs:  [
            GButton(

              icon: Icons.navigate_before,
              text: "Back",

              onPressed:(){

                Navigator.pop(context);
              },
            ),
            GButton(

              icon: Icons.home,
              text: "Home",

              onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return   const OnBoardScreen();
                },),);
              },
            ),
            GButton(

              icon: Icons.navigate_next,
              text: "Next",
              onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return    Slide04();
                },),);
              },

            ),

          ],
        ),
      ),
    ),



    );
  }
}
