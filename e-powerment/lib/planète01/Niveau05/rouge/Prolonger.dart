
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ReponsesProlonger.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/rouge/ReponsesRouge.dart';
import 'package:flutter/material.dart';




class Prolonger extends StatefulWidget {
  Prolonger({Key? key}) : super(key: key);

  @override
  State<Prolonger> createState() => _ProlongerState();
}

class _ProlongerState extends State<Prolonger> {
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
          builder: (context) => ReponsesProlonger(value: buttonText!),
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
                                  handleButtonPress('Pourquoi est-ce difficile d’exprimer tes limites à ce sujet ?');

                                },
                                child: const Text('Pourquoi est-ce difficile d’exprimer tes limites à ce sujet ?',textAlign: TextAlign.center,)),
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
                                  handleButtonPress('Que crains-tu ? Que veux-tu éviter ?');


                                },
                                child: const Text('Que crains-tu ? Que veux-tu éviter ?',textAlign: TextAlign.center,)),
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
                                  handleButtonPress('Penses-tu être en train de protéger ou d’obtenir quelque chose en ne respectant pas tes limites ? De quoi s’agit-il ?');

                                },
                                child: const Text('Penses-tu être en train de protéger ou d’obtenir quelque chose en ne respectant pas tes limites ? De quoi s’agit-il ?',textAlign: TextAlign.center,)),
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
                                  handleButtonPress('Comment souhaites-tu être perçu-e par la/les personne(s) concernée(s) ?');

                                },
                                child: const Text('Comment souhaites-tu être perçu-e par la/les personne(s) concernée(s) ?',textAlign: TextAlign.center,)),
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
                                  handleButtonPress('Comment souhaites-tu percevoir toi-même ?');

                                },
                                child: const Text('Comment souhaites-tu percevoir toi-même ?',textAlign: TextAlign.center,)),
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
                                  handleButtonPress('Essayes-tu de correspondre à un idéal de toi-même, de comportement, en acceptant des choses que tu voudrais refuser ?');

                                },
                                child: const Text('Essayes-tu de correspondre à un idéal de toi-même, de comportement, en acceptant des choses que tu voudrais refuser ?',textAlign: TextAlign.center,)),
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
