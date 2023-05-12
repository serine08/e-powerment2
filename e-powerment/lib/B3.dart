
import 'package:e_empowerment/notes_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'planète01/Niveau03/BesoinModel.dart';

class B3 extends StatefulWidget {
  B3({Key? key}) : super(key: key);

  @override
  State<B3> createState() => _B3State();
}

class _B3State extends State<B3> {
  List<String> myList = ['Rêve', 'Contribution', 'Direction', 'Justice' , 'Spiritualité/religion', 'Valeurs' , 'Espoir', 'Intuition','Beauté/sens esthétique','Clarté'];
  late ScrollController _scrollController = ScrollController();

  Set<String> selectedItems = {};
  late List<Besoin> Besoins;
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

  refreshBesoin() async {
    Besoins = await NotesDatabase.instance.readAllBesoin();


   /* for(var i in Besoins){

      print(i.besoin);

     selectedItems.add(i.besoin);

    }*/





  }

  @override
  void initState() {
    loadSelectedItems(); // Load selected items from local storage on app startup
    _scrollController = ScrollController();

    refreshBesoin();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    saveSelectedItems(); // Save selected items to local storage on app exit
    super.dispose();
  }
  late String value;
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            color: Colors.white,
            child: FutureBuilder(
              future: refreshBesoin(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Text("SENS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                                textAlign: TextAlign.center)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 44, left: 8, right: 8, bottom: 8),
                        child: Scrollbar(
                          thickness: 8,
                          controller: _scrollController,
                          scrollbarOrientation: ScrollbarOrientation.right,
                          interactive: true,
                          thumbVisibility: true,
                          trackVisibility: true,
                          child: ListView.builder(
                            controller: _scrollController,

                            itemCount: myList.length,
                            itemBuilder: (context, index) {
                              final item = myList[index];
                              return InkWell(
                                onTap: () async {
                                  if (selectedItems.contains(item)) {
                                    selectedItems.remove(item);
                                    // Delete item from database
                                    Besoin? besoin = await NotesDatabase.instance.getBesoinByValue(item);
                                    if (besoin?.idBesoin != null) {
                                      await NotesDatabase.instance.deleteB(besoin!.idBesoin!);
                                      print("Deleted $item");

                                    }
                                  } else {
                                    selectedItems.add(item);
                                    // Add item to database
                                    final besoin = Besoin(
                                      idBesoin: 01,
                                      besoin: item,
                                    );
                                    await NotesDatabase.instance.createB(besoin);
                                    print("Added $item");

                                  }

                                  await saveSelectedItems();
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 2),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: selectedItems.contains(item)
                                          ? Colors.purple
                                          : null,
                                    ),
                                    child: ListTile(
                                      title: Text('-$item',style: TextStyle(color: selectedItems.contains(item)? Colors.white : Colors.black),),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
