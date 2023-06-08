import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;
import 'package:bottom_sheet/bottom_sheet.dart';
class pageNiveau01 extends StatefulWidget {
  const pageNiveau01({Key? key}) : super(key: key);

  @override
  State<pageNiveau01> createState() => _pageNiveau01State();
}

class _pageNiveau01State extends State<pageNiveau01> with TickerProviderStateMixin{
 // late VideoPlayerController _videoPlayerController;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _translateAnimation;
  late Animation<Offset> _textTranslateAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(_controller);

    _translateAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -1.5),
    ).animate(_controller);

    _textTranslateAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, 1.5), // Move text downwards
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return pageNiveau01(); // Make sure to use the correct class name for the next page
        }));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Text('Modal Bottom Sheet'),
          ),
        );
      },
    );
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




                Stack(
                    children: [

                      Align(
                        alignment: const Alignment(0,0),

                          child: GestureDetector(
                            onTap: (){
                            },
                            child: Container(

                                width: 260,
                                height: 260,
                                decoration:    const BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage("images/cheminP2.png"),
                                    fit:BoxFit.fitWidth,

                                  ),




                                )
                            ),
                          ),
                        ),



                    ]
                ),


                Stack(
                    children: [

                      Align(
                        alignment:  Alignment(0.36,0.22),

                        child: Transform.rotate(
                          angle: -math.pi/16,

                          child: GestureDetector(
                            onTap: (){

                              _showModalBottomSheet(context); // Call the method to show the modal bottom sheet

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


                Stack(
                    children: [

                      Align(
                        alignment: const Alignment(-0.4,-0.03),

                        child: Transform.rotate(
                          angle: -math.pi/16,

                          child: GestureDetector(
                            onTap: (){

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

                Stack(
                    children: [

                      Align(
                        alignment: const Alignment(0.36,-0.3),

                        child: Transform.rotate(
                          angle: -math.pi/16,

                          child: GestureDetector(
                            onTap: (){

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
              ]
          ),



        ),
      ),

    );
  }
}
