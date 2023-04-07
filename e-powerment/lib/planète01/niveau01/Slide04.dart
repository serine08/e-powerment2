import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/ChoixModel.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/Slide05.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';




class Slide04 extends StatefulWidget {
   const Slide04({Key? key}) : super(key: key);

  @override
  State<Slide04> createState() => _Slide04State();
}

class _Slide04State extends State<Slide04> {
   List<ChoixModel> choix =[
     ChoixModel("Ca m'intéresse !", false),
     ChoixModel("je l'ai fais déjà, je n'ai pas besoin de le refaire ", false),
     ChoixModel("Ca ne m'intéresse pas ou ca me concerne pas", false)
   ];

   List<ChoixModel> selectedChoix = [];
   late int currentchoix;

   FlutterTts ftts = FlutterTts();
   speak(String text) async {
     await ftts.setLanguage("fr");
     await ftts.setPitch(1.2);
     await ftts.speak(text);
     await ftts.setVolume(5.0);
     await ftts.setSpeechRate(1.0);

   }


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
                 onPressed:() async {
                    if(currentchoix==0){

                   speak("ok go ");
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return    const Slide05();
                  },),); }
                 else {
                   
                   speak("“Ok  Alors je te propose de revenir sur le chemin");
                Navigator.push(context, MaterialPageRoute(builder: (context){

               return    const HomePage();
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
          choix[index].isSelected=!choix[index].isSelected;
          currentchoix=index;
        })

     /*   setState(() {
          choix[index].isSelected = !choix[index].isSelected;
          if (choix[index].isSelected == true) {
            selectedChoix?.add(ChoixModel(item, true));
          }
          else if (choix[index].isSelected == false) {
            selectedChoix!.removeWhere((element) =>
            element.item == choix[index].item);
          }


        });*/

      },


    );

  }


}
