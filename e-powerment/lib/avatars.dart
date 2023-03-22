import 'package:e_empowerment/CardWidget.dart';
import 'package:e_empowerment/RangeSlider.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pseudo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {

  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.deepPurple.shade100,

      body: Container(

        padding: EdgeInsets.only(top: 60 ,left:10,right: 10),



        child: Column(
          children: [

            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Pour commencer je te propose de choisir ton ',
                  style: TextStyle(color: Colors.deepPurple , fontSize: 20 , fontWeight: FontWeight.bold),

                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: ' avatar !', style: TextStyle( color:Colors.white,fontWeight: FontWeight.bold,)),


                  ],
                ),
                textAlign: TextAlign.center,
              ),



            ), //<------------


            Expanded(

              child: GridView.builder(
                padding: const EdgeInsets.only(top: 30,left: 20,right: 20),

                itemCount: 6,
                itemBuilder: (context,index){
                  return Card(

                    elevation: 10,child: Center(child:Center(

                    child: GestureDetector(
                      child: Image.asset(values[index]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PseudoPage()));
                      },
                    ),
                  ) ,),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing:40,
                  mainAxisSpacing: 20,


                ),

              ),
            ),




          ],

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

                icon: Icons.home,
                text: "Home",

                onPressed:(){

                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return   const HomePage();
                  },),);
                },
              ),
              GButton(

                icon: Icons.navigate_next,
                text: "Next",
         onPressed:(){

          Navigator.push(context, MaterialPageRoute(builder: (context){

          return   NotesPage();
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
