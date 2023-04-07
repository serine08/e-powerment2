
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide06.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide08Bis.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../pages/onboarding_screen.dart';
import 'ChoixModel.dart';

class Slide05 extends StatefulWidget {
  const Slide05({Key? key}) : super(key: key);

  @override
  State<Slide05> createState() => _Slide05State();
}

class _Slide05State extends State<Slide05> {

  List<ChoixModel> choix =[
    ChoixModel("Attentionné.é", false),
    ChoixModel("Créatif.ve ", false),
    ChoixModel("Déterminé.e", false),
    ChoixModel("Dynamique ", false),
    ChoixModel("Fiable ", false),
    ChoixModel("Généreux ", false),
    ChoixModel("Humble ", false),
    ChoixModel("Indépendant.e ", false),
    ChoixModel("Joyeux.se ", false),
    ChoixModel("Organisé.e", false),
    ChoixModel("Passionné.e ", false),
    ChoixModel("Prévoyant.e", false),
    ChoixModel("Respectueux.se", false),
    ChoixModel("Sensible", false),
    ChoixModel("Sportif.ve", false),
  ];

  List<String> selectedChoix = [];
  late  int currentchoix;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(

        padding: const EdgeInsets.only(left:15,top:40,right:15),
        child:  GestureDetector(
            onTap : () {
              FocusScope.of(context).unfocus();
            },
            child :ListView(
              children:  [

                const SizedBox(
                    height:5 ),
                Center(
                  child:Stack(

                    children: [
                      Center(
                        child: Stack(

                          children: [

                            Container(

                              width: double.infinity,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
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
                              padding: const EdgeInsets.all(10),

                              child: const Text(" Quelles qualités te correspondent ? ",
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
                    ],),),
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
                              height: 500,

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
                              padding: const EdgeInsets.only(top:5,left: 20,right: 20),

                              child:ListView.builder(
                                  itemCount: choix.length,
                                  itemBuilder: (BuildContext context, int index){
                                    return ChoixItem(choix[index].item, choix[index].isSelected, index);
                                  }),

                            ),

                          ],
                        ),
                      ),
                    ],),),
                const SizedBox(
                    height:20 ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: [
                    FloatingActionButton.extended(


                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Slide08Bis(myList: selectedChoix),
                          ),
                        );

                      },
                      label: const Text('Je valide'),
                      icon: const Icon(Icons.check),
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

                    return   const OnBoardScreen();
                  },),);
                },
              ),
              GButton(

                icon: Icons.navigate_next,
                text: "Next",
                onPressed:(){



                  if(selectedChoix.isNotEmpty){


                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return      const Slide06();
                    },),); }
                  else {



                       showDialog(context: context,
                           builder: (BuildContext context )=> AlertDialog(
                             backgroundColor: Colors.deepPurple.shade50,


                             content: Text("Pour continuer, tu dois sélectionner au moins une qualité! Parfois, on croit qu'on n'en a aucune, mais moi, je suis sur.e que tu en as au moins une sur cette page ",
                             style: TextStyle(

                               color: Colors.grey.shade700,
                               fontSize: 15,
                               fontWeight: FontWeight.w500,

                             ),
                             textAlign: TextAlign.center,),

                           ));

                     

                  }

                },

              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget ChoixItem(String item, bool isSelected , int index) {
    return ListTile(
      /* leading: CircleAvatar(
        backgroundColor: Colors.deepPurple[500],
        child: const Icon(Icons.person_outline_outlined,
          color: Colors.white,
        ),
      ),*/
      title: Text(
        item, style:  TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w500,),),



      trailing: isSelected ?
      Icon(
        Icons.check_circle, color: Colors.deepPurple[500],
      ) :
      const Icon(
        Icons.check_circle_outline, color: Colors.grey,
      ),
      onTap: ()=>  {


        setState(() {
          choix[index].isSelected = !choix[index].isSelected;
          currentchoix=index;
          if (choix[index].isSelected == true) {
            selectedChoix?.add(choix[index].item);

          }
          else if (choix[index].isSelected == false) {
            selectedChoix!.removeWhere((element) =>
            element == choix[index].item);
          }


        }),




      },


    );

  }
}
