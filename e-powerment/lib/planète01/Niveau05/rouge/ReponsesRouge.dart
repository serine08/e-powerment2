
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/FinPlanete.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Limitom%C3%A8tre.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/Prolonger.dart';

import 'package:flutter/material.dart';
import 'package:record/record.dart';






class ReponsesRouge extends StatefulWidget {
  ReponsesRouge({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  State<ReponsesRouge> createState() => _ReponsesRougeState();
}

class _ReponsesRougeState extends State<ReponsesRouge> {
  TextEditingController myController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<Map<String, dynamic>> media = [];

  bool isRecording = false;

  final record =Record();

  bool isPlaying = false;

  late AudioPlayer audioPlayer;
 // Add this line
  Future<void> playAudio(String filePath) async {
    if (audioPlayer.state == PlayerState.playing) {
      await audioPlayer.stop();
    }

    print(filePath);

    audioPlayer =  AudioPlayer();

    await audioPlayer.play(UrlSource(filePath));




  }

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer(); // Initialize the AudioPlayer

  }

  @override
  void dispose() {
    audioPlayer.dispose(); // Dispose the AudioPlayer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false, // Empêcher le redimensionnement automatique du Scaffold
      body: SingleChildScrollView(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration:  const BoxDecoration(

              image: DecorationImage(
                image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover,

              ),
            ),

            child: Column(
              children: [
                Expanded(
                  child: Center(


                    child: Stack(
                        children:[

                          Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration:  BoxDecoration(

                                  color: const Color(0xff000000).withOpacity(0.46)



                              )
                          ),


                          Align(
                            alignment: const Alignment(0,-0.6),
                            child: RichText(
                              text:  const TextSpan(
                                text: 'On peut réfléchir ensemble pourquoi c’est compliqué d’exprimer et partager tes limites. Pense à une situation précise et décris tes ressentis : pensées, émotions, sensations physiques...',
                                style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),

                                /*defining default style is optional */

                              ),

                              textAlign: TextAlign.center,
                            ),
                          ),



                          Align(
                            alignment: const Alignment(-0.9,-0.9),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return   const Limitometre();
                                },),);
                              }, icon: const Icon(Icons.cancel),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          ),
                         /* Align(
                            alignment: const Alignment(0,-0.2),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),

                                width: 360,
                                height: 100,

                                child: Center(
                                  child: Text('$value',style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                  ),textAlign: TextAlign.center,),
                                )
                            ),
                          ),*/

                          Stack(
                              children:[


                                Align(
                                  alignment: const Alignment(0,0.1),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.0),
                                        color: Colors.white,
                                      ),

                                      width: 250,
                                      height: 150,

                                      child: Align(
                                          alignment:Alignment(0,-2.5),
                                          child: buildTextField('Toucher pour écrire...'))
                                  ),
                                ),

                                Align(
                                  alignment:  const Alignment(0,0.6),
                                  child:   iconTextButton("Record a voice",
                                    Colors.red,
                                        () async {
                                      File file = File("");
                                      String? filePath;
                                      if (await record.hasPermission()) {
                                        if (isRecording) {
                                          setState(() {
                                            isRecording = !isRecording;
                                          });
                                          record.stop().then((String? filePath) {
                                            file = File(filePath!);
                                            setState(() {
                                              media.add({"type": "audio", "file": file});
                                            });
                                          });
                                        } else {
                                          setState(() {
                                            isRecording = !isRecording;
                                          });
                                          await record.start();
                                        }
                                      }
                                    },
                                    isRecording
                                        ? const Icon(Icons.stop,
                                        color: Colors.white, size: 30)
                                        : const Icon(
                                      Icons.mic,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    context,
                                    media, // Pass the media list

                                  ),
                                  // child:  Icon(recorder.isRecording ? Icons.stop : Icons.mic)),
                                ),

                              ]
                          ),

                          Align(
                            alignment: const Alignment(-0.8,0.9),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.all(12),
                                    textStyle: const TextStyle(fontSize: 18),
                                    elevation: 10,
                                    backgroundColor: Colors.pink.shade300,
                                    fixedSize: const Size(200, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){

                                    return    Prolonger();
                                  },),);
                                },
                                child: const Text('J’aimerais prolonger cette réflexion',textAlign: TextAlign.center,)),
                          ),
                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return    FinPlanete();
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
              ],
            ),

          ),
        ),
      ),

    );

  }

  Widget buildTextField( String placeholder   ) {
    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 8,vertical: 30),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,
          maxLines: null,

          onSaved: (String? value){
            String value = myController.text;
            print('La valeur saisie est : $value');
          },
          decoration: InputDecoration(





              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,

                ),

              ),

              enabledBorder:   OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.5

                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white
                  )
              ),
              fillColor: Colors.white,
              filled: true,

              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle:  TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500
              )

          ),



        ),
      ),

    );

  }
}
Widget iconTextButton(String name, Color color, Function function, Icon icon,
    BuildContext context, List<Map<String, dynamic>> media) {
  return GestureDetector(
      onTap: () {
        function();
      },
      child:Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Align(
          alignment: const Alignment(0, 0.6),
          child: SizedBox(
            width: 100,
            height: 80, // Adjust the height as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                    child: Center(child: icon),
                  ),
                ),

                Text(name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      )



  );
}