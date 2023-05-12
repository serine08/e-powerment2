
import 'package:e_empowerment/avatars.dart';
import 'package:e_empowerment/intro_screens/intro_page3.dart';
import 'package:e_empowerment/intro_screens/intro_page_1.dart';
import 'package:e_empowerment/intro_screens/intro_page_2.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

 // controller to keep track of which page we're on
  final PageController _controller= PageController();




  // keep track if we're on the last page

  bool onLastPage =false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        children: [


         PageView(

           children: const [
             IntroPage1(),


           ],
         ),

          //page view

       // dot indicators 


          Align(
                   alignment: const Alignment(0.9,0.9),
                   child: IconButton(


                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    Avatar();
                        },),);
                      }, icon: const Icon(Icons.navigate_next),
                      iconSize: 40,
                      color: Colors.white,


                    ),
                 ),




        ],

      )
    );
  }
}
