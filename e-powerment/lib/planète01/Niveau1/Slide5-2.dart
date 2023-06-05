import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/Slide1.dart';
import 'package:e_empowerment/notes_database.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';





class Slide5_2 extends StatefulWidget {
  const Slide5_2({Key? key}) : super(key: key);

  @override
  State<Slide5_2> createState() => _Slide5_2State();
}

class _Slide5_2State extends State<Slide5_2> {





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
                    value = "Compréhensif·ve";

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
                        idQuality: 16,
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
                              color: selectedItems.contains("Compréhensif·ve") ? Colors.purple : null,
                            )


                        ),

                         Align(
                            alignment:Alignment(0.82,-0.58),

                            child: Text('Compréhensif·ve',style: TextStyle(color: selectedItems.contains("Compréhensif·ve") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),





                GestureDetector(
                  onTap: () async {
                    value = "Curieux·se";

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
                        idQuality: 17,
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
                              color: selectedItems.contains("Curieux·se") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.16,-0.33),

                            child: Text('Curieux·se',style: TextStyle(color: selectedItems.contains("Curieux·se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    value = "Discipliné·e";

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
                        idQuality: 18,
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
                              color: selectedItems.contains("Discipliné·e") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.25,-0.54),

                            child: Text('Discipliné·e',style: TextStyle(color: selectedItems.contains("Discipliné·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Enthousiaste";

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
                        idQuality: 19,
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
                              color: selectedItems.contains("Enthousiaste") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.7,-0.26),

                            child: Text('Enthousiaste',style: TextStyle(color: selectedItems.contains("Enthousiaste") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Fidèle";

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
                        idQuality: 20,
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
                              color: selectedItems.contains("Fidèle") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.7,-0.165),

                            child: Text('Fidèle',style: TextStyle(color: selectedItems.contains("Fidèle") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Gentil·le";

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
                        idQuality: 21,
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
                              color: selectedItems.contains("Gentil·le") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,-0.06),

                            child: Text('Gentil·le',style: TextStyle(color: selectedItems.contains("Gentil·le") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Imaginatif·ive";

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
                        idQuality: 22,
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
                              color: selectedItems.contains("Imaginatif·ive") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.78,0.12),

                            child: Text('Imaginatif·ive',style: TextStyle(color: selectedItems.contains("Imaginatif·ive") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]

                  ),
                ),

                GestureDetector(
                  onTap: () async {
                    value = "Intègre";

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
                        idQuality: 23,
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
                              color: selectedItems.contains("Intègre") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,0.25),

                            child: Text('Intègre',style: TextStyle(color: selectedItems.contains("Intègre") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),


                GestureDetector(
                  onTap: () async {
                    value = "Minutieux·se";

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
                        idQuality: 24,
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
                              color: selectedItems.contains("Minutieux·se") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.8,0.05),

                            child: Text('Minutieux·se',style: TextStyle(color: selectedItems.contains("Minutieux·se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Original·e";

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
                        idQuality: 25,
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
                              color: selectedItems.contains("Original·e") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.76,0.37),

                            child: Text('Original·e',style: TextStyle(color: selectedItems.contains("Original·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Patient·e";

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
                        idQuality: 26,
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
                              color: selectedItems.contains("Patient·e") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0,0.5),

                            child: Text('Patient·e',style: TextStyle(color: selectedItems.contains("Patient·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Raisonnable";

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
                        idQuality: 27,
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
                              value = "Raisonnable";

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
                                  idQuality: 27,
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
                              color: selectedItems.contains("Raisonnable") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.8,0.42),

                            child: Text('Raisonnable',style: TextStyle(color: selectedItems.contains("Raisonnable") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Responsable";

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
                        idQuality: 28,
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
                              value = "Responsable";

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
                                  idQuality: 28,
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
                              color: selectedItems.contains("Responsable") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(0.78,0.68),

                            child: Text('Responsable',style: TextStyle(color: selectedItems.contains("Responsable") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Sociable";

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
                        idQuality: 29,
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
                              value = "Sociable";

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
                                  idQuality: 29,
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
                              color: selectedItems.contains("Sociable") ? Colors.purple : null,
                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.7,0.71),

                            child: Text('Sociable',style: TextStyle(color: selectedItems.contains("Sociable") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    value = "Sympathique";

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
                        idQuality: 30,
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
                              value = "Sympathique";

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
                                  idQuality: 30,
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
                              color: selectedItems.contains("Sympathique") ? Colors.purple : null,

                            ),
                          ),
                        ),
                         Align(
                            alignment:Alignment(-0.01,0.84),

                            child: Text('Sympathique',style: TextStyle(color: selectedItems.contains("Sympathique") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                  ),
                ),





















              ],
            ),







          ),
        )
    );
  }
}
