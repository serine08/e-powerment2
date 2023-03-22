import 'package:flutter/material.dart';
import 'note.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  late String title;
  late String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  content = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Content',
              ),
              maxLines: null,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                DateTime now = DateTime.now();
                Note note = Note(
                  title: title,
                  content: content,
                  dateTime: now,
                );
                Navigator.pop(context, note);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
