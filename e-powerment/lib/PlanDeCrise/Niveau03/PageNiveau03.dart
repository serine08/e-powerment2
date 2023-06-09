import 'package:e_empowerment/PlanDeCrise/Niveau01/slide01.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau02/slide01Niveau02.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau03/slide01Niveau03.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;
class pageNiveau03 extends StatefulWidget {
  const pageNiveau03({Key? key}) : super(key: key);

  @override
  State<pageNiveau03> createState() => _pageNiveau03State();
}

class _pageNiveau03State extends State<pageNiveau03> with TickerProviderStateMixin{
  // late VideoPlayerController _videoPlayerController;
  late AnimationController _controller;

  bool isModalVisible = false;

  late Rect initialPosition = const Rect.fromLTWH(75, 210, 260, 260);

  late Rect initialPositionE1 = const Rect.fromLTWH(240, 380, 65, 65);
  late Rect initialPositionE2 = const Rect.fromLTWH(100, 300, 65, 65);
  late Rect initialPositionE3 = const Rect.fromLTWH(235, 220, 65, 65);


  void _showModalBottomSheet(BuildContext context) {
    setState(() {
      isModalVisible = true;
      initialPosition = const Rect.fromLTWH(120, 160, 160, 160);
      initialPositionE1 = const Rect.fromLTWH(225, 268, 35, 35);
      initialPositionE2 = const Rect.fromLTWH(130, 220, 35, 35);
      initialPositionE3 = const Rect.fromLTWH(225, 166, 35, 35);

    });
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),

          height: 320,
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(

              child: Column(
                children: [
                  Text('1. La crise : les signaux, ce qui la déclenche, ce qui l’aggrave',style: TextStyle(color: Color(0xff962C08),fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),
                  const SizedBox(height: 12),
                  const Text(
                    'Ici, tu vas chercher les signaux annonciateurs d’une crise à venir. C’est quand jevais bien, quand je me sens serein·e, que je peux prendre le temps de définir ce que représente unecrise afin d’anticiper la prochaine.',
                    style: TextStyle(fontSize: 16,color: Color(0xff962C08),),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor:Color(0xff962C08),
                          fixedSize: const Size(300, 15),


                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    slide01();
                        },),);
                      },
                      child: const Text('jouer',textAlign: TextAlign.center,)),

                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor: Color(0xff962C08),
                          fixedSize: const Size(300, 15),

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){

                      },
                      child: const Text('passer',textAlign: TextAlign.center,)),

                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      setState(() {
        isModalVisible = false;
        initialPosition = const Rect.fromLTWH(75, 210, 260, 260);
        initialPositionE1 = const Rect.fromLTWH(240, 380, 65, 65);
        initialPositionE2 = const Rect.fromLTWH(100, 300, 65, 65);
        initialPositionE3 = const Rect.fromLTWH(235, 220, 65, 65);

      });
    });
  }
  void _showModalBottomSheet2(BuildContext context) {
    setState(() {
      isModalVisible = true;
      initialPosition = const Rect.fromLTWH(120, 160, 160, 160);
      initialPositionE1 = const Rect.fromLTWH(225, 268, 35, 35);
      initialPositionE2 = const Rect.fromLTWH(130, 220, 35, 35);
      initialPositionE3 = const Rect.fromLTWH(225, 166, 35, 35);

    });
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),

          height: 320,
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(

              child: Column(
                children: [
                  Text('2. Apaiser la crise : quoi faire et qui contacter',style: TextStyle(color: Color(0xff962C08),fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),
                  const SizedBox(height: 12),
                  const Text(
                    'Maintenant que tu as mieux cerné les signaux, les facteurs déclencheurs etaggravants d’une crise, on peut voir ensemble qui contacter quand tu as besoin d’aide et commentfaire pour apaiser la crise.',
                    style: TextStyle(fontSize: 16,color: Color(0xff962C08),),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor:Color(0xff962C08),
                          fixedSize: const Size(300, 15),


                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    slide01Niveau02();
                        },),);
                      },
                      child: const Text('jouer',textAlign: TextAlign.center,)),

                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor: Color(0xff962C08),
                          fixedSize: const Size(300, 15),

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){

                      },
                      child: const Text('passer',textAlign: TextAlign.center,)),

                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      setState(() {
        isModalVisible = false;
        initialPosition = const Rect.fromLTWH(75, 210, 260, 260);
        initialPositionE1 = const Rect.fromLTWH(240, 380, 65, 65);
        initialPositionE2 = const Rect.fromLTWH(100, 300, 65, 65);
        initialPositionE3 = const Rect.fromLTWH(235, 220, 65, 65);

      });
    });
  }
  void _showModalBottomSheet3(BuildContext context) {
    setState(() {
      isModalVisible = true;
      initialPosition = const Rect.fromLTWH(120, 160, 160, 160);
      initialPositionE1 = const Rect.fromLTWH(225, 268, 35, 35);
      initialPositionE2 = const Rect.fromLTWH(130, 220, 35, 35);
      initialPositionE3 = const Rect.fromLTWH(225, 166, 35, 35);

    });
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),

          height: 320,
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('3. Rédiger ses directives anticipées ?',style: TextStyle(color: Color(0xff962C08),fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Les Directives Anticipées en Psychiatrie qu’est-ce que c’est ?.',
                    style: TextStyle(fontSize: 16,color: Color(0xff962C08),),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor:Color(0xff962C08),
                          fixedSize: const Size(300, 15),


                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return    slide01Niveau03();
                        },),);
                      },
                      child: const Text('jouer',textAlign: TextAlign.center,)),

                  const SizedBox(height: 8),

                  TextButton(

                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          textStyle: const TextStyle(fontSize: 16),
                          elevation: 10,
                          backgroundColor: Color(0xff962C08),
                          fixedSize: const Size(300, 15),

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){

                      },
                      child: const Text('passer',textAlign: TextAlign.center,)),

                ],
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      setState(() {
        isModalVisible = false;
        initialPosition = const Rect.fromLTWH(75, 210, 260, 260);
        initialPositionE1 = const Rect.fromLTWH(240, 380, 65, 65);
        initialPositionE2 = const Rect.fromLTWH(100, 300, 65, 65);
        initialPositionE3 = const Rect.fromLTWH(235, 220, 65, 65);

      });
    });
  }
  /*@override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }
*/
  /*Future<void> _initializeVideoPlayer() async {
    _videoPlayerController = VideoPlayerController.asset('assets/fond_animation.mp4');
    await _videoPlayerController.initialize();
    _videoPlayerController.play();
    _videoPlayerController.setLooping(true);
    setState(() {});
  }*/

  /*@override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* body: _videoPlayerController.value.isInitialized
          ? Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                height: _videoPlayerController.value.size?.height ?? 0,
                width: _videoPlayerController.value.size?.width ?? 0,
                child: VideoPlayer(_videoPlayerController),
              ),
            ),
          ),
        ],
      )
          : const Center(
        child: CircularProgressIndicator(),
      ),*/

      body: Container(
        decoration:  const BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/fond.png"),
            fit:BoxFit.cover,

          ),
        ),

        child: Center(


          child: Stack(
              children:[





                AnimatedPositioned.fromRect(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                  rect: initialPosition,
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      width: 260,
                      height: 260,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/cheminP2.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),





                AnimatedPositioned.fromRect(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                  rect: initialPositionE1,

                  // Update the star's position
                  child: Transform.rotate(
                    angle: -math.pi / 16,
                    child: GestureDetector(
                      onTap: () {
                        _showModalBottomSheet(context);
                      },
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/etoileP2.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



                AnimatedPositioned.fromRect(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                  rect: initialPositionE2,



                  child: Transform.rotate(
                    angle: -math.pi/16,

                    child: GestureDetector(
                      onTap: (){
                        _showModalBottomSheet2(context);

                      },
                      child: Container(

                          width: 65,
                          height: 65,
                          decoration:   const BoxDecoration(

                            image: DecorationImage(
                              image: AssetImage("images/etoileP2.png"),
                              fit:BoxFit.fitWidth,

                            ),




                          )
                      ),
                    ),
                  ),

                ),









                AnimatedPositioned.fromRect(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                  rect: initialPositionE3,
                  child: Transform.rotate(
                    angle: -math.pi/16,

                    child: GestureDetector(
                      onTap: (){
                        _showModalBottomSheet3(context);

                      },
                      child: Container(

                          width: 65,
                          height: 65,
                          decoration:   const BoxDecoration(

                            image: DecorationImage(
                              image: AssetImage("images/etoileP2.png"),
                              fit:BoxFit.fitWidth,

                            ),




                          )
                      ),
                    ),
                  ),
                ),




              ]
          ),



        ),
      ),

    );
  }
}
