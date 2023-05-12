


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

  late int  currentStep;
  int selectedCard = -1;

  late bool _isButtonDisabled;
  @override
  void initState() {
    _isButtonDisabled = false;
  }

  void _incrementCounter() {
    setState(() {
      _isButtonDisabled = true;

    });
  }
  @override
  Widget build(BuildContext context) {

    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(



      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/Plandetravail1.png"),
          fit:BoxFit.cover
        ),
        ),
        padding: const EdgeInsets.only(top: 60 ,left:10,right: 10),



        child: Column(
          children: [

            Center(
              child: RichText(
                text:  TextSpan(
                  text: 'Pour commencer je te propose de choisir ton ',
                  style: const TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: ' avatar !', style: TextStyle( color:Colors.deepPurple[200],fontWeight: FontWeight.bold,)),


                  ],
                ),
                textAlign: TextAlign.center,
              ),



            ), //<------------


            Expanded(

              child: GridView.builder(

                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),

                itemCount: 6,
                itemBuilder: (context,index){

                  return Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide(
                          color: selectedCard == index ? const Color(0xff6856FF) : Colors.transparent,
                       // color: selectedCard == 0 ? const Color(0xffA49BEC) : Colors.transparent,
                        width: 4
                      )
                    ),
                    elevation: 10,
                    child: Center(


                       child: GestureDetector(

                          child: Container(

                              decoration: BoxDecoration(


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
                              ),

                              ),

                           onTap: () {
                        setState(() {
                          currentStep = index;
                          selectedCard=index;
                        }  );


                      },
                    ),

                  ) ,
                  );
                },
                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing:40,
                  mainAxisSpacing: 20,



                ),

              ),
            ),







          ],

        ),

      ),
      bottomNavigationBar:GNav(

        tabBorderRadius: 15,
        duration: const Duration(milliseconds: 800),

        backgroundColor: const Color(0xff29216B ),
        iconSize: 40,

        activeColor: Colors.white,



        // here where it ends
        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 350),
        tabs:  [


          GButton(

            icon: Icons.navigate_next,



            onPressed:(){

              Navigator.push(context, MaterialPageRoute(builder: (context){

                return   PseudoPage(index: currentStep);
              },),);
            },

          ),

        ],
      ),


        );



  }
}
