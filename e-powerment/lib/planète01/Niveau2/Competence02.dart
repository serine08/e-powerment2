
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Inserer.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:shared_preferences/shared_preferences.dart';




import 'dart:math';

class Competence02 extends StatefulWidget {
  const Competence02({Key? key}) : super(key: key);

  @override
  State<Competence02> createState() => _Competence02State();
}

class _Competence02State extends State<Competence02> {
  late List<Competence> competences;
  Set<String> selectedItems = {};




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
  refreshCompetence() async {
    competences = await NotesDatabase.instance.readAllCompetence();


   for (var i in competences){

     print(i.competence);
     selectedItems.add(i.competence);
   }


   }





  @override
  void initState() {
    loadSelectedItems();
    refreshCompetence();
    super.initState();
  }
  @override
  void dispose() {

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
                alignment: const Alignment(0,-0.7),
                child: RichText(
                  text: const TextSpan(
                    text: 'Quelles compétences te correspondent! ',
                    style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),
                  ),

                  textAlign: TextAlign.center,
                ),
              ),
              // First widget

              Positioned(
                top: 120,
                left: 10,
                child: GestureDetector(
                  onTap: () async {
                    value = "Réparer un vélo";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 10,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("Réparer un vélo") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Réparer un vélo',
                            style: TextStyle(
                              color: selectedItems.contains("Réparer un vélo")
                                  ? Colors.white
                                  : Colors.black,
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
                top: 140,
                left: 200,
                child: GestureDetector(
                  onTap: () async {
                    value = "S\'occuper d\'un bébé";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 11,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("S\'occuper d\'un bébé") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'S\'occuper d\'un bébé',
                            style: TextStyle(
                              color: selectedItems.contains("S\'occuper d\'un bébé")
                                  ? Colors.white
                                  : Colors.black,
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
                top: 300,
                left: 40,
                child: GestureDetector(
                  onTap: () async {
                    value = "Couper les cheveux";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 12,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("Couper les cheveux") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Couper les cheveux',
                            style: TextStyle(
                              color: selectedItems.contains("Couper les cheveux") ? Colors.white : Colors.black,
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
                    value = "Parler plusieurs langues";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 13,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("Parler plusieurs langues") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Parler plusieurs langues',
                            style: TextStyle(
                              color: selectedItems.contains("Parler plusieurs langues") ? Colors.white : Colors.black,
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
                left: 190,
                child: GestureDetector(
                  onTap: () async {
                    value = "Maîtriser les réseaux sociaux";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 14,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 210,
                          height: 130,
                          color: selectedItems.contains("Maîtriser les réseaux sociaux") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Maîtriser les réseaux sociaux',
                            style: TextStyle(
                              color: selectedItems.contains("Maîtriser les réseaux sociaux") ? Colors.white : Colors.black,
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
                left: 10,
                child: GestureDetector(
                  onTap: () async {
                    value = "Connaître la législation dans un domaine";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 15,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 260,
                          height: 130,
                          color: selectedItems.contains("Connaître la législation dans un domaine") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment(0,0.12),
                          child: Text(
                            'Connaître la législation dans un domaine',
                            style: TextStyle(
                              color: selectedItems.contains("Connaître la législation dans un domaine") ? Colors.white : Colors.black,

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
                    value = "Reconnaître les champignons";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 16,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 180,
                          height: 130,
                          color: selectedItems.contains("Reconnaître les champignons") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Reconnaître les champignons',
                            style: TextStyle(
                              color: selectedItems.contains("Reconnaître les champignons") ? Colors.white : Colors.black,
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
                    value = "Connaître les plantes médicinales";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 17,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 190,
                          height: 130,
                          color: selectedItems.contains("Connaître les plantes médicinales") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Connaître les plantes médicinales',
                            style: TextStyle(
                              color: selectedItems.contains("Connaître les plantes médicinales") ? Colors.white : Colors.black,

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
                    value = "Savoir tricoter";
                    if (!selectedItems.contains(value)) {
                      selectedItems.add(value);
                      final competence = Competence(
                        idCompetence: 18,
                        competence: value,
                      );
                      await NotesDatabase.instance.createC(competence);
                      print("Added $value");
                    } else {
                      selectedItems.remove(value);
                      Competence? competence = await NotesDatabase.instance.getCompetenceByValue(value);
                      if (competence?.idCompetence != null) {
                        await NotesDatabase.instance.deleteC(competence!.idCompetence!);
                        print("Deleted $value");
                      }
                    }
                    await saveSelectedItems();
                    setState(() {});
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0.9, -0.5),
                        child: Image.asset(
                          'images/nuage3.png',
                          width: 160,
                          height: 130,
                          color: selectedItems.contains("Savoir tricoter") ? Colors.purple : null,
                        ),
                      ),
                       Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Savoir tricoter',
                            style: TextStyle(
                              color: selectedItems.contains("Savoir tricoter") ? Colors.white : Colors.black,
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


              Align(
                alignment: const Alignment(0.9,0.98),
                child: IconButton(


                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return    Inserer();
                    },),);
                  }, icon: const Icon(Icons.navigate_next),
                  iconSize: 40,
                  color: Colors.white,


                ),
              )
            ],
          ),
        ),
      ),
    );


  }
}


// Second widget



