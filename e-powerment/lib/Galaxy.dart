import 'package:e_empowerment/Slide1.dart';
import 'package:e_empowerment/plan%C3%A8te01/niveau01/slide01.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Galaxy extends StatefulWidget {
  const Galaxy({Key? key}) : super(key: key);

  @override
  State<Galaxy> createState() => _GalaxyState();
}

class _GalaxyState extends State<Galaxy> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/Plandetravail1.png"),
              fit:BoxFit.cover
          ),
        ),


     
        


                child: ListView(
                  reverse: true,
                    children:  [


              Center(


                          child: Column(
                            children:<Widget> [
                              Align(
                                alignment: const Alignment(1,-1),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(

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
                                        image:   const DecorationImage(

                                          fit: BoxFit.cover,
                                          image:AssetImage("images/5.png"),

                                        ) ,
                                      )
                                  ),
                                ),

                              ),

                              Align(
                                alignment: const Alignment(-0.9,0.9),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(

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
                                        image:   const DecorationImage(

                                          fit: BoxFit.cover,
                                          image:AssetImage("images/4.png"),
                                        ) ,
                                      )
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(0.9,-0.9),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(

                                      width: 100,
                                      height: 100,
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
                                        image:   const DecorationImage(

                                          fit: BoxFit.cover,
                                          image:AssetImage("images/3.png"),
                                        ) ,
                                      )
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(-0.9,0.9),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(

                                      width: 100,
                                      height: 100,
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
                                        image:   const DecorationImage(

                                          fit: BoxFit.cover,
                                          image:AssetImage("images/2.png"),
                                        ) ,
                                      )
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(0.9,-0.9),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Slide1()),
                                    );
                                  },
                                  child: Container(

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
                                        image:   const DecorationImage(

                                          fit: BoxFit.cover,
                                          image:AssetImage("images/1.png"),

                                        ) ,
                                      )
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(-0.9,0.9),
                                child: Container(

                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(

                                      border:Border.all(width: 2,color: Colors.transparent ),
                                      boxShadow: [
                                        BoxShadow(

                                            spreadRadius :2,
                                            blurRadius: 10,
                                            color: Colors.black.withOpacity(0.1)
                                        ),

                                      ],
                                      shape: BoxShape.rectangle,
                                      image:   const DecorationImage(

                                        fit: BoxFit.cover,
                                        image:AssetImage("images/vaisseau.png"),
                                      ) ,
                                    )
                                ),
                              ),
                            ],
                          ),










                  ),
                  ]
                ),


















        

      ),
      bottomNavigationBar:  GNav(

        tabBorderRadius: 15,
        duration: const Duration(milliseconds: 800),
        backgroundColor: const Color(0xff29216B) ,
        color: Colors.white,
        iconSize: 40,

        activeColor: Colors.white,

        gap: 8,

        // here where it ends
        padding: const EdgeInsets.all(10),
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

                return   const Galaxy();
              },),);
            },

          ),

        ],
      ),
    );
  }
}
