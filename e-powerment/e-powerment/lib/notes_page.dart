import 'package:e_empowerment/add_note.dart';
import 'package:e_empowerment/edit_note_page.dart';
import 'package:e_empowerment/note_detail_page.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/widget/note_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';




class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

 refreshNotes();
  }

  @override
  void dispose() {
  //  NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: const Text(
        'Notes',
        style: TextStyle(fontSize: 24),
      ),
      actions:   [
        IconButton(
            icon: const Icon(Icons.search),

          onPressed: (){
              showSearch(
                  context: context,
                  delegate:CustomSearch()
              );
          },
        )



      ],
    ),
    body: Center(

      child: isLoading
          ? const CircularProgressIndicator()
          : notes.isEmpty
          ? const Text(

        'No Notes',
        style: TextStyle(color: Colors.white, fontSize: 24),
      )
          : buildNotes(),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.deepPurple,
      child: const Icon(Icons.add),
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const AddEditNotePage()),
        );

        refreshNotes();
      },
    ),
  );

  Widget buildNotes() => StaggeredGridView.countBuilder(
    padding: const EdgeInsets.all(8),
    itemCount: notes.length,
    staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
    crossAxisCount: 4,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    itemBuilder: (context, index) {
      final note = notes[index];

      return GestureDetector(
        onTap: () async {
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteDetailPage(noteId: note.id!),
          ));

          refreshNotes();
        },
        child: NoteCardWidget(note: note, index: index),
      );
    },
  );
}

class CustomSearch extends SearchDelegate{
  List<String> allData =[
'American','Russia' , 'China', 'Germany', 'Italy','France', 'England', 'Vietnamese'
  ];
  @override
  List<Widget> buildActions (BuildContext context) {
    //TODO : implement buildActions
   return[
     IconButton(

         icon: const Icon(Icons.clear),
     onPressed:(){
          query=' ';
     })
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: (){
          close (context,null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in allData) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in allData) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
  }


