import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Limitom%C3%A8tre.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Orange/Questions.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau05/Situation2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau4/Questions/question01Bis.dart';
import 'package:flutter/material.dart';

class Orange3 extends StatelessWidget {
  Orange3({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: const Color(0xff000000).withOpacity(0.46),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0, -0.65),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Bravo ! Déjà, tu as réussi à identifier ce\nqui se passe pour toi dans cette situation\net comment tu te sens. Maintenant voici\nquelques questions pour t’aider à\nréfléchir davantage.',
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.9, -0.9),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const Limitometre();
                                }),
                              );
                            },
                            icon: const Icon(Icons.cancel),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: const Alignment(0, 0.7),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                                width: 250,
                                height: 150,
                                child: Align(
                                  alignment: Alignment(0, -2.5),
                                  child: buildTextField('Toucher pour écrire...'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const Alignment(0, 0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.all(12),
                              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              elevation: 10,
                              backgroundColor: Colors.white,
                              fixedSize: const Size(340, 100),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Questions();
                                }),
                              );
                            },
                            child: const Text(
                              'Selectionner une question',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                      ],
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

  Widget buildTextField(String placeholder) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
      child: Form(
        key: _formKey,
        child: TextFormField(
          enabled: false, // Disable text field
          controller: myController,
          maxLines: null,
          onSaved: (String? value) {
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
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.5,
              ),
            ),
            fillColor: Colors.white,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            ),
          ),
        ),
      ),
    );
  }
}
