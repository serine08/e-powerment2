import 'package:e_empowerment/Welcome.dart';
import 'package:e_empowerment/avatars.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class PseudoPage extends StatelessWidget {
  PseudoPage({Key? key, required this.index}) : super(key: key);



  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];
final int index;

bool isObscurePassword =true;
   TextEditingController myController = TextEditingController();

  get currentStep => index;
  final _formKey = GlobalKey<FormState>();

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
                               image:AssetImage(values[index]),
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
                  buildTextField("Pseudo", "Roumaissa"),

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

                    return  OnBoardScreen();
                  },),);
                },
              ),
              GButton(

                icon: Icons.navigate_next,
                text: "Next",
                onPressed:(){
                 if(_formKey.currentState!.validate()){
                  String value = myController.text;
                   Navigator.push(context, MaterialPageRoute(builder: (context){

                                         return    Welcome(value: value, index: index) ;
                                                       },),);

                         }

                },

              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextField(String labelText , String placeholder ) {
    return  Padding(
        padding: const EdgeInsets.all( 50),
      child: Form(
        key: _formKey,
        child: TextFormField(
          controller: myController,

          onSaved: (String? value){
            String value = myController.text;
            print('La valeur saisie est : $value');
          },
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
          validator: (String? value) =>
          value != null && value.isEmpty ? 'Pseudo can not be empty ' : null,

        ),
      ),
    );

  }
}

