import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide08Bis.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

   


class Slide08 extends StatefulWidget {

  const Slide08({Key? key}) : super(key: key);

  @override
  State<Slide08> createState() => _Slide08State();
}

class _Slide08State extends State<Slide08> {
  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
 late final String value;
  List<String> items =[];

  get myList => myList;


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


                const SizedBox(
                    height:50 ),
                const Text("Tu as peut-être d'autres qualités qui n’étaient pas listées. Tu peux les ajouter ici :",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ) ,textAlign: TextAlign.center, ),
                const SizedBox(
                    height:80 ),
                buildTextField("Mes qualitées..."),


                const SizedBox(
                    height:30 ),

                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      FloatingActionButton.extended(


                        onPressed: () {



                        },
                        label: const Text('Je valide'),
                        icon: const Icon(Icons.check),
                        backgroundColor: Colors.deepPurple.shade700,

                      ),
                      FloatingActionButton.extended(


                        onPressed: () {

                          // Add your onPressed code here!
                        },
                        label: const Text('  Skip    '),
                        icon: const Icon(Icons.navigate_next_outlined),
                        backgroundColor: Colors.deepPurple.shade700,

                      ),
                    ],
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

                    return  const OnBoardScreen();
                  },),);
                },
              ),
              GButton(

                icon: Icons.navigate_next,
                text: "Next",
                onPressed:(){


                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return      NotesPage();
                    },),);

                  }



              ),

            ],
          ),
        ),
      ),


    );
  }



Widget buildTextField( String placeholder ) {
  return  Padding(
    padding:  const EdgeInsets.all( 50),
    child: Form(
      key: _formKey,
      child: TextFormField(
        controller: myController,

        onSaved: (String? value){
          value = myController.text;

          print('La valeur saisie est : $value');
        },
        decoration: InputDecoration(
            contentPadding:  const EdgeInsets.only(bottom: 5),

            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey
            )

        ),


      ),
    ),
  );

}
}


