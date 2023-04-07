import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide03.dart';
import 'package:flutter/material.dart';




import 'package:e_empowerment/pages/hidden_drawer.dart';

import 'package:e_empowerment/pages/onboarding_screen.dart';


import 'package:google_nav_bar/google_nav_bar.dart';


class Slide01 extends StatelessWidget {




  const Slide01({Key? key}) : super(key: key);









  @override
  Widget build(BuildContext context) {
    final int index;
    return  Scaffold(


      body:Container(

        padding: const EdgeInsets.only(left:15,top:40,right:15),
        child:  GestureDetector(
            onTap : () {
              FocusScope.of(context).unfocus();
            },
            child :ListView(
              children:  [
         const Text("ESTIME DE SOI",
         style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: Colors.deepPurple
         ),textAlign: TextAlign.center,),
                const SizedBox(
                    height:20 ),
                Center(
                    child:Stack(

                      children: [

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
                                image:AssetImage("images/planete01.png"),
                              ) ,
                            )
                        ),

                      ],
                    )
                  /*  child: TextField(

                      decoration: InputDecoration(
                        hintText: 'Pseudo...',
                      ),
                    ), */
                ),
                const SizedBox(
                    height:50 ),
                Center(
                  child: Stack(

                    children: [

                      Container(

                        width: double.infinity,

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
                        padding: EdgeInsets.all(10),

                        child: const Text("L'Estime de soi, c'est la capacité de s'aimer tel qu'on est et de s'accorder à soi-meme suffisamment de valeur. Ici, on va t'aider à développer un regard bienveillant sur toi-meme.",
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

                const SizedBox(
                    height:40 ),
                Center(
                  child: Stack(

                    children: [

                      Container(

                          width: 200,
                          height: 50,
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
                        padding: EdgeInsets.all(10),

                        child: const Text("C'EST PARTI !",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),textAlign: TextAlign.center,
                        ),
                      ),

                    ],
                  ),
                ),






              ],
            )









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

                    return   const Slide03();
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

