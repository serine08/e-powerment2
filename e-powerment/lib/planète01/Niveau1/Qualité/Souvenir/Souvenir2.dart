
import 'dart:io';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/FinSouvenir.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:e_empowerment/notes_database.dart';



class Souvenir2 extends StatefulWidget {
  Souvenir2({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<Souvenir2> createState() => _Souvenir2State();
}

class _Souvenir2State extends State<Souvenir2> {
  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<Map<String, dynamic>> media = [];

  bool isRecording = false;
  final record =Record();
  bool isPlaying = false;
  late AudioPlayer audioPlayer; // Add this line

  // Function to play audio
// Function to play audio

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





                          GestureDetector(

                            child: Stack(
                                children:[


                                  Align(
                                      alignment: const Alignment(0,-0.75),


                                      child: Image.asset(
                                        'images/nuage3.png',
                                        width: 160,
                                        height: 160,

                                      )


                                  ),

                                  Align(
                                      alignment:const Alignment(-0.01,-0.6),

                                      child: Text(widget.text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),)),
                                ]
                            ),
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
                                      height: 200,

                                      child: Align(
                                          alignment:const Alignment(0,-1),
                                          child: buildTextField('Toucher pour écrire...'))
                                  ),
                                ),

                              ]
                          ),
                          Align(
                            alignment: const Alignment(0.9, 0.95),
                            child: IconButton(
                              onPressed: () async {
                                final form = _formKey.currentState;
                                if (form != null && form.validate()) {
                                  form.save(); // Save the form data

                                  String textFieldValue = myController.text; // Retrieve the text field value
                                  if (textFieldValue.isNotEmpty) {
                                    final textFieldData = await NotesDatabase.instance.createTextFieldData("some quality", textFieldValue);
                                    print('Saved TextFieldData: $textFieldValue');
                                  }

                                  // Proceed with the next action
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return FinSouvenir(text: widget.text);
                                    }),
                                  );
                                }
                              },
                              icon: const Icon(Icons.navigate_next),
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



                          Column(
                            children: [
                              for (var item in media)
                                ListTile(
                                  leading: const Icon(Icons.audiotrack),
                                  title: const Text('Audio'),
                                  subtitle: Text(item['file'].path),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.play_arrow),
                                    onPressed: () {
                                      playAudio(item['file'].path); // Call the playAudio function

                                    },
                                  ),
                                ),
                            ],
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
    final focusNode = FocusNode();

    return  Padding(
      padding: const EdgeInsets.symmetric( horizontal: 8,vertical: 8),


      child: Form(
        key: _formKey,

        child: TextFormField(

          controller: myController,
          maxLines: null,
          onSaved: (String? value){
            String value = myController.text;
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
                  fontSize: 16,
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

                Text(name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      )



  );
}
