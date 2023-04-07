import 'package:e_empowerment/Galaxy.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/Plandetravail1.png"),
              fit:BoxFit.cover
          ),
        ),

        padding: const EdgeInsets.only(left:15,top:80,right:15),
        child:  GestureDetector(
            onTap : () {
              FocusScope.of(context).unfocus();
            },
            child :ListView(
              children:  [


                Center(
                    child:Stack(

                      children: [

                        Container(

                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(

                              border:Border.all(width: 2,color: Colors.transparent ),
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

                Container(


                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(100),
                    border:Border.all(color: Colors.transparent ),
                    color: const Color(0xffA49BEc).withOpacity(0.3),
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
                  child: RichText(
                    text:  TextSpan(
                      text: 'Enchanté  ',
                      style: const TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' $value ', style:  TextStyle( color:Color(0xffA49BEC),fontSize:20,fontWeight: FontWeight.bold,)),
                        const TextSpan(
                            text: ' !', style: TextStyle( color:Colors.white ,fontSize:20, fontWeight: FontWeight.bold,)),


                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                RichText(
                  text:   const TextSpan(
                    text: 'Moi, c\'est  ',
                    style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' POTO ', style: TextStyle( color:Color(0xffA49BEC),fontSize:20,fontWeight: FontWeight.bold,)),
                      TextSpan(
                          text: ' je vais t\'accompagner dans cette exploration ', style: TextStyle( color:Colors.white ,fontSize:20, fontWeight: FontWeight.bold,)),


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

                          border:Border.all(width: 2,color: Colors.transparent ),
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



              ],
            )









        ),


      ),
      bottomNavigationBar:  GNav(

            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 800),
            backgroundColor: Color(0xff29216B) ,
            color: Colors.white,
            iconSize: 40,

            activeColor: Colors.white,

            gap: 8,

            // here where it ends
            padding: const EdgeInsets.all(16),
            tabs:  [
              GButton(

                icon: Icons.navigate_before,


                onPressed:(){

                  Navigator.pop(context);
                },
              ),

              GButton(

                icon: Icons.navigate_next,
                onPressed:(){

                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return   Galaxy();
                  },),);
                },

              ),

            ],
          ),

    );
  }

}

