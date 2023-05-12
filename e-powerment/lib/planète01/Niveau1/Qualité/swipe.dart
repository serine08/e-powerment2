import 'package:e_empowerment/Slide5.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Slide5-2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Slide5_3.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/page_niveau1.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Swipe extends StatelessWidget {
  Swipe({Key? key}) : super(key: key);
  final _controller =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(

          child: Stack(

            children: [




              Align(
                  alignment: const Alignment(0,0.6),

                  child: PageView(
                    controller: _controller,
                    children:  const [
                      Slide5(),
                      Slide5_2(),
                      Slide5_3(),

                    ],
                  )

              ),


              Align(
                alignment: const Alignment(0,0.98),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:  const SwapEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white38,
                      dotHeight: 20,
                      dotWidth: 20
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.95,-0.9),
                child: IconButton(


                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return    const Niveau();
                    },),);
                  }, icon: const Icon(Icons.cancel),
                  iconSize: 40,
                  color: Colors.white,


                ),
              )

            ],
          ),
        )
    );
  }
}
