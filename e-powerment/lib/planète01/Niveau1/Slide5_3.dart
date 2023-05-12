import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/Slide1.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/page_niveau1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'Slide6.dart';

class Slide5_3 extends StatefulWidget {
  const Slide5_3({Key? key}) : super(key: key);

  @override
  State<Slide5_3> createState() => _Slide5_3State();
}

class _Slide5_3State extends State<Slide5_3> {

  Set<String> selectedItems = {};


  int size = 0;
  late List<Quality> qualitys;
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

  refreshQuality() async {

    qualitys =  await NotesDatabase.instance.readAllQuality();

    for (var i in qualitys){

      print(i.quality);
      selectedItems.add(i.quality);
    }

  }

  @override
  void initState() {
    loadSelectedItems(); // Load selected items from local storage on app startup

    refreshQuality();
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
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit:BoxFit.cover
            ),
          ),



          child: Center(





            child: Stack(

              children: [


                Align(
                  alignment: const Alignment(0,-0.8),
                  child: RichText(
                    text:  const TextSpan(
                      text: 'Quelles qualités\nte correspondent ? ',
                      style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */

                    ),

                    textAlign: TextAlign.center,
                  ),
                ),








                GestureDetector(
                  onTap: () async {
                    value = "Courageux.se";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 31,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[


                        Align(
                            alignment: const Alignment(0.9,-0.7),


                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Courageux.se") ? Colors.purple : null,

                            )


                        ),

                         Align(
                            alignment:Alignment(0.82,-0.58),

                            child: Text('Courageux.se',style: TextStyle(color: selectedItems.contains("Courageux.se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),





                GestureDetector(
                  onTap: () async {
                    value = "Débrouillard.e";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 32,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0.2,-0.4),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Débrouillard.e") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.16,-0.33),

                            child: Text('Débrouillard.e',style: TextStyle(color: selectedItems.contains("Débrouillard.e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    value = "Doux.ce";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 33,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.3,-0.65),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Doux.ce") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.25,-0.54),

                            child: Text('Doux.ce',style: TextStyle(color: selectedItems.contains("Doux.ce") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Festif.ve";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 34,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.8,-0.32),
                          child: GestureDetector(
                            onTap: (){
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Slide1()),
                              );*/
                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Festif.ve") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.7,-0.26),

                            child: Text('Festif.ve',style: TextStyle(color: selectedItems.contains("Festif.ve") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Fort.e";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 35,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0.9,-0.2),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Fort.e") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.7,-0.165),

                            child: Text('Fort.e',style: TextStyle(color: selectedItems.contains("Fort.e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Honnête";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 36,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0,-0.08),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Honnête") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,-0.06),

                            child: Text('Honnête',style: TextStyle(color: selectedItems.contains("Honnête") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Impulsif.ve";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 37,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children: [

                        Align(
                          alignment: const Alignment(0.85,0.14),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Impulsif.ve") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.68,0.12),

                            child: Text('Impulsif.ve',style: TextStyle(color: selectedItems.contains("Impulsif.ve") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]

                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    value = "Joueur.se";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 38,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0,0.3),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Joueur.se") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,0.25),

                            child: Text('Joueur.se',style: TextStyle(color: selectedItems.contains("Joueur.se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),


                GestureDetector(
                  onTap: () async {
                    value = "Optimiste";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 39,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.94,0.05),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Optimiste") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.8,0.05),

                            child: Text('Optimiste',style: TextStyle(color: selectedItems.contains("Optimiste") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Ouvert.e";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 40,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.9,0.44),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Ouvert.e") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.76,0.37),

                            child: Text('Ouvert.e',style: TextStyle(color: selectedItems.contains("Ouvert.e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Pragmatique";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 41,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0,0.6),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Pragmatique") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,0.5),

                            child: Text('Pragmatique',style: TextStyle(color: selectedItems.contains("Pragmatique") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Rationnel.le";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 42,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0.9,0.5),
                          child: GestureDetector(
                            onTap: () async {
                              value = "Rationnel.le";

                              if (selectedItems.contains(value)) {
                                selectedItems.remove(value);
                                Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                                if (quality?.idQuality != null) {
                                  await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                                  print("Deleted $value");

                                }
                                // remove from database
                              }  else {
                                selectedItems.add(value);
                                // Add item to database
                                final quality = Quality(
                                  idQuality: 42,
                                  quality: value,
                                );
                                await NotesDatabase.instance.createQ(quality);
                                print("Added $value");

                              }
                              await saveSelectedItems();
                              setState(() {});

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Rationnel.le") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.8,0.42),

                            child: Text('Rationnel.le',style: TextStyle(color: selectedItems.contains("Rationnel.le") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Rigolo.te";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 43,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0.8,0.81),
                          child: GestureDetector(
                            onTap: () async {
                              value = "Rigolo.te";

                              if (selectedItems.contains(value)) {
                                selectedItems.remove(value);
                                Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                                if (quality?.idQuality != null) {
                                  await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                                  print("Deleted $value");

                                }
                                // remove from database
                              }  else {
                                selectedItems.add(value);
                                // Add item to database
                                final quality = Quality(
                                  idQuality: 43,
                                  quality: value,
                                );
                                await NotesDatabase.instance.createQ(quality);
                                print("Added $value");

                              }
                              await saveSelectedItems();
                              setState(() {});

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Rigolo.te") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.68,0.68),

                            child: Text('Rigolo.te',style: TextStyle(color: selectedItems.contains("Rigolo.te") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Spontané.e";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 44,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(-0.85,0.84),
                          child: GestureDetector(
                            onTap: () async {
                              value = "Spontané.e";

                              if (selectedItems.contains(value)) {
                                selectedItems.remove(value);
                                Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                                if (quality?.idQuality != null) {
                                  await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                                  print("Deleted $value");

                                }
                                // remove from database
                              }  else {
                                selectedItems.add(value);
                                // Add item to database
                                final quality = Quality(
                                  idQuality: 44,
                                  quality: value,
                                );
                                await NotesDatabase.instance.createQ(quality);
                                print("Added $value");

                              }
                              await saveSelectedItems();
                              setState(() {});

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Spontané.e") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.7,0.71),

                            child: Text('Spontané.e',style: TextStyle(color: selectedItems.contains("Spontané.e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Travailleur.se";

                    if (selectedItems.contains(value)) {
                      selectedItems.remove(value);
                      Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                      if (quality?.idQuality != null) {
                        await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                        print("Deleted $value");

                      }
                      // remove from database
                    }  else {
                      selectedItems.add(value);
                      // Add item to database
                      final quality = Quality(
                        idQuality: 45,
                        quality: value,
                      );
                      await NotesDatabase.instance.createQ(quality);
                      print("Added $value");

                    }
                    await saveSelectedItems();
                    setState(() {});

                  },
                  child: Stack(
                      children:[

                        Align(
                          alignment: const Alignment(0,1),
                          child: GestureDetector(

                            onTap: () async {
                              value = "Travailleur.se";

                              if (selectedItems.contains(value)) {
                                selectedItems.remove(value);
                                Quality? quality = await NotesDatabase.instance.getQualityByValue(value);
                                if (quality?.idQuality != null) {
                                  await NotesDatabase.instance.deleteQ(quality!.idQuality!);
                                  print("Deleted $value");

                                }
                                // remove from database
                              }  else {
                                selectedItems.add(value);
                                // Add item to database
                                final quality = Quality(
                                  idQuality: 45,
                                  quality: value,
                                );
                                await NotesDatabase.instance.createQ(quality);
                                print("Added $value");

                              }
                              await saveSelectedItems();
                              setState(() {});

                            },
                            child: Image.asset(
                              'images/nuage3.png',
                              width: 130,
                              height: 130,
                              color: selectedItems.contains("Travailleur.se") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.01,0.84),

                            child: Text('Travailleur.se',style: TextStyle(color: selectedItems.contains("Travailleur.se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),



                Align(
                  alignment: const Alignment(0.9,0.98),
                  child: IconButton(


                    onPressed: () {
                      if (selectedItems.length > 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Slide6();
                          }),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Pour continuer, tu dois sélectionner au moins trois qualités ! Parfois, on croit qu’on n’en a aucune, mais moi, je suis sûr·e que tu en as au moins trois qualités en tout",style: TextStyle(fontSize: 15),),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    icon: const Icon(Icons.navigate_next),
                    iconSize: 40,
                    color: Colors.white,


                  ),
                )

















              ],
            ),







          ),
        )
    );
  }
}
