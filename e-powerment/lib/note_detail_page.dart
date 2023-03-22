import 'package:e_empowerment/edit_note_page.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteDetailPage extends StatefulWidget {
  final int noteId;

  const NoteDetailPage({
    Key? key,
    required this.noteId,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NoteDetailPageState createState() => _NoteDetailPageState();
}

  class _NoteDetailPageState extends State<NoteDetailPage> {
  late Note note;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);

    this.note = await NotesDatabase.instance.readNote(widget.noteId);

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      actions: [editButton(), deleteButton()],
    ),
    body: isLoading
        ? const Center(child: CircularProgressIndicator())
        : Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [


            Text(

              note.title,
              style:  TextStyle(

                color: Colors.grey.shade700,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

          const SizedBox(height: 10),
          Text(
            DateFormat.yMMMd().format(note.createdTime),
            style:  TextStyle(color: Colors.grey.shade700),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              note.description,
              style:  TextStyle(color: Colors.grey.shade700, fontSize: 18),
            ),
          )
        ],
      ),
    ),
  );

  Widget editButton() => IconButton(
      icon: const Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditNotePage(note: note),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
    icon: const Icon(Icons.delete),
    onPressed: () async {
      await NotesDatabase.instance.delete(widget.noteId);

      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
    },
  );
}