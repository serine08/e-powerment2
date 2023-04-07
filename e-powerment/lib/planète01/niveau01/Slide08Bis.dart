


import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/ChoixModel.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide09.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class Slide08Bis extends StatefulWidget {
   List<String> myList;
   Slide08Bis({Key? key, required this.myList}) : super(key: key);



  @override
  State<Slide08Bis> createState() => _Slide08BisState();
}

class _Slide08BisState extends State<Slide08Bis> {




  late List<String> myList=[];



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
                              height: 300,

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
                              padding: const EdgeInsets.only(top:60,left: 20,right: 20),

                              child:ListView.builder(
                                itemCount: myList.length,
                                   itemBuilder: (BuildContext context, int index) {
                                     return ListTile  (
                                         title: Text(
                                             myList[index]
                                         ));
                                       },),
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

                      return    const Slide09();
                    },),);



                },

              ),

            ],
          ),
        ),
      ),

    );
  }

  Widget QualiteItem(String item, int index) {
    return ListTile(

      title: Text(
        item, style:  TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w500,),),







    );

  }


}
