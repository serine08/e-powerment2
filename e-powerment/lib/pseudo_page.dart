import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class PseudoPage extends StatelessWidget {
  PseudoPage({Key? key}) : super(key: key);




  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];

bool isObscurePassword =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        body:Container(
          
          padding: const EdgeInsets.only(left:15,top:20,right:15),
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
                               image:AssetImage(values[1]),
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
                   const Text("Quel est le Pseudonyme que tu souhaites utiliser ?",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ) ,textAlign: TextAlign.center, ),
                  buildTextField("Pseudo", "Roumaissa", false),

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

                icon: Icons.home,
                text: "Home",

                onPressed:(){

                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return   const HiddenDrawer();
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
  Widget buildTextField(String labelText , String placeholder , bool isPasswordTextField) {
    return  Padding(
        padding: const EdgeInsets.all( 50),
      child: TextField(

        decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          )

        ),
      ),
    );

  }
}

