


import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/FinPlanete.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';

import 'package:flutter/material.dart';
import 'package:record/record.dart';

import '../../../notes_database.dart';
import '../../Niveau1/Qualité/Souvenir/Souvenir2.dart';






class vert02 extends StatefulWidget {
  vert02({Key? key}) : super(key: key);

  @override
  State<vert02> createState() => _vert02State();
}

class _vert02State extends State<vert02> {
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



                          Stack(
                              children:[


                                Align(
                                  alignment: const Alignment(0,0),
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


                              ]
                          ),




                          Align(
                            alignment: const Alignment(-0.9,-0.9),
                            child: IconButton(


                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){

                                  return   const Slide1N4rouge();
                                },),);
                              }, icon: const Icon(Icons.cancel),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          ),




                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: () async {
                             final form = _formKey.currentState;
                             if (form != null && form.validate()) {
                               form.save(); // Save the form data

                               String textFieldValue = myController
                                   .text; // Retrieve the text field value
                               if (textFieldValue.isNotEmpty) {
                                 final textFieldData = await NotesDatabase
                                     .instance.createTextFieldData(
                                     "some quality", textFieldValue);
                                 print('Saved TextFieldData: $textFieldValue');
                               }

                               Navigator.push(
                                 context, MaterialPageRoute(builder: (context) {
                                 return FinPlanete();
                               },),);
                             } }, icon: const Icon(Icons.navigate_next),
                              iconSize: 40,
                              color: Colors.white,


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





















