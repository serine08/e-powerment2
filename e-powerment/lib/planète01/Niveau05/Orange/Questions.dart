
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Reponses.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';
import 'package:flutter/material.dart';




class Questions extends StatefulWidget {
  Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
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
          builder: (context) => Reponses(value: buttonText!),
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
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Comment aimerais-tu que ça se passe idéalement ?');

                                },
                                child: const Text('Comment aimerais-tu que\n ça se passe idéalement ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,-0.42),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Y a-t-il un contexte qui te mettrait plus en confiance ?');


                                },
                                child: const Text('Y a-t-il un contexte qui te mettrait\nplus en confiance ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,-0.12),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Y a-t-il des personnes qui peuvent t’aider à t’exprimer plus clairement ?');

                                },
                                child: const Text('Y a-t-il des personnes qui peuvent t’aider à t’exprimer plus clairement ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.18),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Pourrais-tu demander aux personnes qui t’entourent de t’écouter davantage ?');

                                },
                                child: const Text('Pourrais-tu demander aux personnes qui t’entourent de t’écouter davantage ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.48),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('As-tu des idées de choses à faire pour que ça se passe mieux ?');

                                },
                                child: const Text('As-tu des idées de choses à faire pour que ça se passe mieux ?',textAlign: TextAlign.center,)),
                          ),

                          Align(
                            alignment: const Alignment(0,0.78),
                            child: TextButton(

                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.all(8),
                                    textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    elevation: 10,
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(350, 70),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                onPressed: (){
                                  handleButtonPress('Pourrais-tu mettre ces choses en place ?');

                                },
                                child: const Text('Pourrais-tu mettre ces choses en place ?',textAlign: TextAlign.center,)),
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
