import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:shared_preferences/shared_preferences.dart';



import 'dart:math';

class Competence01 extends StatefulWidget {
  const Competence01({Key? key}) : super(key: key);

  @override
  State<Competence01> createState() => _Competence01State();
}

class _Competence01State extends State<Competence01> {
  Set<String> selectedItems = {};

  late List<Competence> competences;

  Future<void> loadSelectedItems() async {
    final prefs = await SharedPreferences.getInstance();
    final savedItems = prefs.getStringList('selectedItems');
    if (savedItems != null) {
      setState(() {
        selectedItems = savedItems.toSet();
      });
    }
  }

  Future<void> saveSelectedItems() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('selectedItems', selectedItems.toList());
  }

  Future<void> refreshCompetences() async {
    competences = await NotesDatabase.instance.readAllCompetence();
    for (var i in competences){

      print(i.competence);
      selectedItems.add(i.competence);
    }

  }

  @override
  void initState() {
    loadSelectedItems(); // Load selected items from local storage on app startup

    refreshCompetences();
    super.initState();
  }

  @override
  void dispose() {
    saveSelectedItems(); // Save selected items to local storage on app exit

    super.dispose();
  }

  late String value;
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final random = Random(); // Create a random number generator

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0, -0.7),
                child: RichText(
                  text: const TextSpan(
                    text: 'Quelles compétences te correspondent! ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 120,
                left: 10,
                child: GestureDetector(
                  onTap: () async {
                    value = "Etre capable de s’adapter";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 01,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.5, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("Etre capable de s’adapter")
                              ? Colors.purple
                              : null,
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Etre capable de\ns’adapter',
                            style: TextStyle(
                                color: selectedItems.contains("Etre capable de s’adapter")
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Second widget
              Positioned(
                top: 140,
                left: 200,
                child: GestureDetector(
                  onTap: () async {
                    value = "Bien gérer son stress";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 02,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 170,
                          height: 130,
                          color: selectedItems.contains("Bien gérer son stress")
                              ? Colors.purple
                              : null,
                          // Add the onTap event to change the color of the image
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Bien gérer son stress',
                            style: TextStyle(
                              color: selectedItems.contains("Bien gérer son stress")
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Third widget
              Positioned(
                top: 300,
                left: 40,
                child: GestureDetector(

                  onTap: () async {
                    value = "Faire preuve de réactivité";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 03,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 200,
                          height: 130,
                          color: selectedItems.contains("Faire preuve de réactivité") ? Colors.purple : null,
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Faire preuve de réactivité',
                            style: TextStyle(
                              color: selectedItems.contains("Faire preuve de réactivité") ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 200,
                left: 80,
                child: GestureDetector(
                  onTap: () async {
                    value = "Savoir synthétiser";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 04,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },


                    child: Stack(
                      children: [
                        Align(
                          alignment: const Alignment(0.9, -0.5),
                          child: Image.asset(
                            'images/nuage3.png',
                            width: 160,
                            height: 130,
                            color: selectedItems.contains("Savoir synthétiser") ? Colors.purple : null,

                          ),
                        ),
                         Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Savoir synthétiser',
                              style: TextStyle(
                                color: selectedItems.contains("Savoir synthétiser") ? Colors.white :  Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),

                ),
              ),
              Positioned(
                top: 350,
                left: 210,
                child: GestureDetector(
                  onTap: () async {
                    value = "Communiquer clairement";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 05,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },


                    child: Stack(
                      children: [
                        Align(
                          alignment: const Alignment(0.9, -0.5),
                          child: Image.asset(
                            'images/nuage3.png',
                            width: 190,
                            height: 130,
                            color: selectedItems.contains("Communiquer clairement") ? Colors.purple : null,
                          ),
                        ),
                         Positioned.fill(
                          child: Align(
                            alignment: Alignment(0,0.08),
                            child: Text(
                              'Communiquer clairement',
                              style: TextStyle(
                                color: selectedItems.contains("Communiquer clairement") ? Colors.white :  Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),

                ),
              ),
              Positioned(
                top: 420,
                left: 80,
                child: GestureDetector(
                  onTap: () async {
                    value = "Etre pédagogue";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 06,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }

                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 160,
                          height: 130,
                          color: selectedItems.contains("Etre pédagogue") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Etre pédagogue',
                            style: TextStyle(
                              color: selectedItems.contains("Etre pédagogue") ? Colors.white :  Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 520,
                left: 10,
                child: GestureDetector(
                  onTap: () async {
                    value = "Maîtriser tel logiciel";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 06,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 170,
                          height: 130,
                          color: selectedItems.contains("Maîtriser tel logiciel") ? Colors.purple : null,

                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Maîtriser tel logiciel',
                            style: TextStyle(
                              color: selectedItems.contains("Maîtriser tel logiciel") ? Colors.white :  Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 480,
                left: 200,
                child: GestureDetector(
                  onTap: () async {
                    value = "Faire du pain";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 08,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 160,
                          height: 130,
                          color: selectedItems.contains("Faire du pain") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Faire du pain',
                            style: TextStyle(
                              color: selectedItems.contains("Faire du pain") ? Colors.white :  Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 240,
                left: 240,
                child: GestureDetector(
                  onTap: () async {
                    value = "Concevoir des plans";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance
                          .getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(
                            competence!.idCompetence!);
                        print("Deleted $value");
                      } else {
                        selectedItems.add(value);
                        final competence = Competence(
                          idCompetence: 09,
                          competence: value,
                        );
                        await NotesDatabase.instance.createC(competence);
                        print("Added $value");
                      }

                      await saveSelectedItems();
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 160,
                          height: 130,
                          color: selectedItems.contains("Concevoir des plans") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Concevoir des plans',
                            style: TextStyle(
                              color: selectedItems.contains("Concevoir des plans") ? Colors.white :  Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
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
    );


  }
}




