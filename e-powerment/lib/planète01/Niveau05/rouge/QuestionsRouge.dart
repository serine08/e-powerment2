
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Reponses.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ReponsesRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';
import 'package:flutter/material.dart';




class QuestionsRouge extends StatefulWidget {
  QuestionsRouge({Key? key}) : super(key: key);

  @override
  State<QuestionsRouge> createState() => _QuestionsRougeState();
}

class _QuestionsRougeState extends State<QuestionsRouge> {
  TextEditingController myController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? buttonText;

  void handleButtonPress(String buttonValue) {
    setState(() {
      buttonText = buttonValue;
      print(buttonText);
    });
  }
  void handleNextButtonPress(BuildContext context) {
    if (buttonText != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ReponsesRouge(value: buttonText!),
        ),
      );
    }
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

                          Align(
                            alignment: const Alignment(-0.9,-0.9),
                            child: IconButton(


                              onPressed: (){

                              }, icon: const Icon(Icons.cancel),
                              iconSize: 40,
                              color: Colors.white,


                            ),
                          ),




                          Align(
                            alignment: const Alignment(0,-0.7),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 100),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Est-ce que tu arrives à détecter les signaux de ton corps quand il y a quelque-chose que tu n’as pas envie de faire ?');

                                },
                                child: const Text('Est-ce que tu arrives à détecter les signaux de ton corps quand il y a quelque-chose que tu n’as pas envie de faire ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,-0.3),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 90),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Est-ce que tu te sens écouté.e, compris.e, entendu.e quand tu t’exprimes ?');


                                },
                                child: const Text('Est-ce que tu te sens écouté.e, compris.e, entendu.e quand tu t’exprimes ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.05),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 90),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Y a-t-il des personnes qui peuvent t’aider à t’exprimer plus clairement ?');

                                },
                                child: const Text('Y a-t-il des personnes qui peuvent t’aider à t’exprimer plus clairement ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.4),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 90),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Est-ce que tu as le temps et la place pour le faire et le dire ?');

                                },
                                child: const Text('Est-ce que tu as le temps et la place pour le faire et le dire ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.75),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 90),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Écris ou enregistre ce que tu voudrais dire et partager.');

                                },
                                child: const Text('Écris ou enregistre ce que tu voudrais dire et partager.',textAlign: TextAlign.center,)),
                          ),


                          Align(
                            alignment: const Alignment(0.9,0.95),
                            child: IconButton(


                              onPressed: (){
                                handleNextButtonPress(context);

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
}
