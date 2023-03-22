
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pseudo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class ProfilUi extends StatefulWidget {
  const ProfilUi({Key? key}) : super(key: key);

  @override
  State<ProfilUi> createState() => _ProfilUiState();
}

class _ProfilUiState extends State<ProfilUi> {
  var isHover=false;
  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(

        padding: const EdgeInsets.only(top: 40 ,left:10,right: 10),



        child: Column(
          children: [

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
      ),
    ),
    const SizedBox(
    height:10 ),
    const Text("Roumaissa",
    style: TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold,
    fontSize: 20
    ) ,textAlign: TextAlign.center, ),



             //<------------


            Expanded(

              child: GridView.builder(
                padding: const EdgeInsets.only(top: 10,left: 20,right: 20),

                itemCount: 4,
                itemBuilder: (context,index){
                  return Card(

                    elevation: 10,child: Center(child:Center(

                    child: GestureDetector(

                          child: Image.asset(values[1]),
                         onTap: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => HomePage()));
                         },


                    ),
                    child: GestureDetector(

                      child: Image.asset(values[1]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
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


      bottomNavigationBar: MouseRegion(
        onHover: (event){
        setState(() {
        isHover=true;
         });
        },
        onExit: (event){
       setState(() {
      isHover=false;
       });
        },
        child: Container(
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
          //    tabBackgroundColor: Colors.deepPurple.withOpacity(0.1),
              hoverColor: Colors.deepPurple.withOpacity(0.1),
              gap: 5,

              // here where it ends
              padding: const EdgeInsets.all(16),

              tabs:  [
                GButton(

                  icon: Icons.navigate_before,
                  text: "Back",

                  onPressed:(){

                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return   const HiddenDrawer();
                    },),);
                  },
                ),
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
      ),



    );
  }
}
