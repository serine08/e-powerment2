import 'package:e_empowerment/Quality.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'notes_database.dart';


class Slide5 extends StatefulWidget {
  const Slide5({Key? key}) : super(key: key);



  @override
  State<Slide5> createState() => _Slide5State();
}

class _Slide5State extends State<Slide5> {

  Set<String> selectedItems = {};
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
                          value = "Attentionné·e";

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
                              idQuality: 01,
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
                                  color: selectedItems.contains("Attentionné·e") ? Colors.purple : null,


                                )


                          ),

                             Align(

                                alignment:Alignment(0.82,-0.58),

                                child: Text('Attentionné·e',style: TextStyle(color: selectedItems.contains("Attentionné·e") ? Colors.white :  Colors.black ,fontWeight: FontWeight.bold,fontSize: 15),)),
      ]
                        ),
                      ),





                    GestureDetector(

                      onTap: () async {
                        value = "Déterminé·e";

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
                            idQuality: 02,
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
                              color: selectedItems.contains("Déterminé·e") ? Colors.purple : null,

                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(0.16,-0.33),

                              child: Text('Déterminé·e',style: TextStyle(color: selectedItems.contains("Déterminé·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
    ]
                      ),
                    ),

                    GestureDetector(
                      onTap: () async {
                        value = "Créatif·ve";

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
                            idQuality: 03,
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
                              color: selectedItems.contains("Créatif·ve") ? Colors.purple : null,
                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(-0.25,-0.54),

                              child: Text('Créatif·ve',style: TextStyle(color: selectedItems.contains("Créatif·ve") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Dynamique";

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
                            idQuality: 04,
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
                              color: selectedItems.contains("Dynamique") ? Colors.purple : null,
                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(-0.7,-0.26),

                              child: Text('Dynamique',style: TextStyle(color: selectedItems.contains("Dynamique") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                        ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Fiable";

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
                            idQuality: 05,
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
                              color: selectedItems.contains("Fiable") ? Colors.purple : null,
                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(0.7,-0.165),

                              child: Text('Fiable',style: TextStyle(color: selectedItems.contains("Fiable") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                        ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Généreux·se";

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
                            idQuality: 06,
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
                              color: selectedItems.contains("Généreux·se") ? Colors.purple : null,
                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(0,-0.06),

                              child: Text('Généreux·se',style: TextStyle(color: selectedItems.contains("Généreux·se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Humble";

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
                            idQuality: 07,
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
                              color: selectedItems.contains("Humble") ? Colors.purple : null,
                            ),
                          ),
                        ),
                           Align(
                              alignment:Alignment(0.68,0.12),

                              child: Text('Humble',style: TextStyle(color: selectedItems.contains("Humble") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ]

                      ),
                    ),

                        GestureDetector(
                          onTap: () async {
                            value = "Indépendant·e";

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
                                idQuality: 08,
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
                                      color: selectedItems.contains("Indépendant·e") ? Colors.purple : null,
                                    ),
                                  ),
                                ),
                                 Align(
                                    alignment:Alignment(0,0.25),

                                    child: Text('Indépendant·e',style: TextStyle(color: selectedItems.contains("Indépendant·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                              ]
                          ),
                        ),


                    GestureDetector(
                      onTap: () async {
                        value = "Joyeux·se";

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
                            idQuality: 09,
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
                                  color: selectedItems.contains("Joyeux·se") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(-0.8,0.05),

                                child: Text('Joyeux·se',style: TextStyle(color: selectedItems.contains("Joyeux·se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Organisé·e";

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
                            idQuality: 10,
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
                                  color: selectedItems.contains("Organisé·e") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(-0.76,0.37),

                                child: Text('Organisé·e',style: TextStyle(color: selectedItems.contains("Organisé·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        value = "Passionné·e";

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
                            idQuality: 11,
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
                                  color: selectedItems.contains("Passionné·e") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(0,0.5),

                                child: Text('Passionné·e',style: TextStyle(color: selectedItems.contains("Passionné·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async{
                        value = "Prévoyant·e";

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
                            idQuality: 12,
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


                                },

                                child: Image.asset(
                                  'images/nuage3.png',
                                  width: 130,
                                  height: 130,
                                  color: selectedItems.contains("Prévoyant·e") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(0.8,0.42),

                                child: Text('Prévoyant·e',style: TextStyle(color: selectedItems.contains("Prévoyant·e") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: () async{
                        value = "Respectueux·se";

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
                            idQuality: 13,
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


                                },
                                child: Image.asset(
                                  'images/nuage3.png',
                                  width: 130,
                                  height: 130,
                                  color: selectedItems.contains("Respectueux·se") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(0.78,0.68),

                                child: Text('Respectueux·se',style: TextStyle(color: selectedItems.contains("Respectueux·se") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: ()async{
                        value = "Sensible";

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
                            idQuality: 14,
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


                                },
                                child: Image.asset(
                                  'images/nuage3.png',
                                  width: 130,
                                  height: 130,
                                  color: selectedItems.contains("Sensible") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(-0.7,0.71),

                                child: Text('Sensible',style: TextStyle(color: selectedItems.contains("Sensible") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          ]
                      ),
                    ),
                    GestureDetector(
                      onTap: ()async{
                        value = "Sportif·ve";

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
                            idQuality: 15,
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


                                },
                                child: Image.asset(
                                  'images/nuage3.png',
                                  width: 130,
                                  height: 130,
                                  color: selectedItems.contains("Sportif·ve") ? Colors.purple : null,
                                ),
                              ),
                            ),
                             Align(
                                alignment:Alignment(-0.01,0.84),

                                child: Text('Sportif·ve',style: TextStyle(color: selectedItems.contains("Sportif·ve") ? Colors.white :  Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
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
