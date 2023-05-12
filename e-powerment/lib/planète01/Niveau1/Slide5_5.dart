import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/Slide5_5.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';





class Slide5_5 extends StatelessWidget {
  Slide5_5({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
            fit:BoxFit.cover,

          ),
        ),

        child: Center(


          child: Stack(
              children:[

                Align(
                  alignment: const Alignment(-0.9,-0.9),
                  child: IconButton(


                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return   const Slide5();
                      },),);
                    }, icon: const Icon(Icons.cancel),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                ),


                Stack(
                    children:[

                      Align(
                        alignment: const Alignment(0,0),
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: Image.asset(
                            'images/nuage3.png',
                            width: 250,
                            height: 250,

                          ),
                        ),
                      ),

                    ]
                ),
          StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: const [
              // takes up 2 rows and 2 columns space
              StaggeredTile.count(6, 3), // takes up 2 rows and 1 column

            // takes up 1 row and 2 column space
            ],
            children: List.generate(
                15,
                    (index) => const Center(
                  child: CircleAvatar(
                    radius: 64,

                  ),
                )), // scatter them randomly
          ),

          Align(
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){

                        return    Slide5_5();
                      },),);
                    }, icon: const Icon(Icons.navigate_next),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                )

              ]
          ),



        ),
























      ),

    );

  }


}
