
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
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [


         PageView(
           controller: _controller,
           onPageChanged: (index){
             setState(() {
               onLastPage =(index ==2);
             });
           },
           children: const [
             IntroPage1(),
             IntroPage2(),
             IntroPage3(),

           ],
         ),

          //page view

       // dot indicators 
          Container(
            alignment:  const Alignment(0,0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // to make space between dots indicators
                children: [

                  // skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
          },
                      child :const Text(
                          'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),

                  ),
                  // dot indicator
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect:  ExpandingDotsEffect(
                    activeDotColor: Colors.deepPurple,
                      dotColor: Colors.deepPurple.shade100,

                  ),
                  ),

                  // next  or done
                  onLastPage?

                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return   const Avatar();
                        },),);
                      },
                      child: const Text(
                          'done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                  ):
                  GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                  ) ,),
                ],
              ),)
        ],
      )
    );
  }
}
