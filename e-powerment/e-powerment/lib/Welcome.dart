import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/pseudo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Welcome extends StatelessWidget {
  final String value;



  Welcome({Key? key, required this.value, required this.index}) : super(key: key);




  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];

  bool isObscurePassword =true;
  TextEditingController myController = TextEditingController();
 late int  index;

  @override
  Widget build(BuildContext context) {
    final int index;
    return  Scaffold(


      body:Container(

        padding: const EdgeInsets.only(left:15,top:80,right:15),
        child:  GestureDetector(
            onTap : () {
              FocusScope.of(context).unfocus();
            },
            child :ListView(
              children:  [
                RichText(
                  text:  TextSpan(
                    text: 'Enchanté  ',
                    style: const TextStyle(color: Colors.deepPurple , fontSize: 20 , fontWeight: FontWeight.bold),

                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' <$value> ', style:  TextStyle( color:Colors.purple,fontSize:20,fontWeight: FontWeight.bold,)),
                      const TextSpan(
                          text: ' !', style: TextStyle( color:Colors.deepPurple ,fontSize:20, fontWeight: FontWeight.bold,)),


                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
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
                              image:  DecorationImage(

                                fit: BoxFit.cover,
                                image:AssetImage(values[this.index]),
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
                    height:30 ),
                RichText(
                  text:   const TextSpan(
                    text: 'Moi, c\'est  ',
                    style: TextStyle(color: Colors.deepPurple , fontSize: 20 , fontWeight: FontWeight.bold),

                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' <POTO> ', style: TextStyle( color:Colors.purple,fontSize:20,fontWeight: FontWeight.bold,)),
                      TextSpan(
                          text: ' je vais t\'accompagner dans cette exploration ', style: TextStyle( color:Colors.deepPurple ,fontSize:20, fontWeight: FontWeight.bold,)),


                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                    height:40 ),
                Stack(

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
                            image:AssetImage("images/momo.webp"),
                          ) ,
                        )
                    ),

                  ],
                ),
                const SizedBox(
                    height:20 ),
                RichText(
                  text:   const TextSpan(
                    text: 'A travers  ',
                    style: TextStyle(color: Colors.deepPurple , fontSize: 20 , fontWeight: FontWeight.bold),

                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' <FADA UNIVERS> ', style: TextStyle( color:Colors.purple,fontSize:20,fontWeight: FontWeight.bold,)),



                    ],
                  ),
                  textAlign: TextAlign.center,
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

                    return   const HiddenDrawer();
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

