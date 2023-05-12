import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/BesoinModel.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class BesoinCardWidget extends StatefulWidget {
  BesoinCardWidget({
    Key? key,
    required this.note,
    required this.index,
    required this.onNoteTap,
    required this.refreshNotesList,


  }) : super(key: key);

  final Besoin note;
  final int index;
  final Function(Besoin) onNoteTap;
  final VoidCallback refreshNotesList;



  @override
  _BesoinCardWidgetState createState() => _BesoinCardWidgetState();
}

class _BesoinCardWidgetState extends State<BesoinCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/nuage3.png"),
        ),
      ),
      constraints: const BoxConstraints(),
      child: Stack(
        children: [
          const Positioned.fill(
            child: Material(
              color: Colors.transparent,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: InkWell(
              onTap: () {
                widget.onNoteTap(widget.note);
              },
              onLongPress: () async {
                final confirmed = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Are you sure?'),
                    content: const Text('Do you want to delete this item?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('No'),
                      ),
                    ],
                  ),
                );
                if (confirmed == true) {
                  await NotesDatabase.instance.deleteB(widget.note.id!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${widget.note.besoin} deleted'),
                    ),
                  );
                  // Refresh the notes list after deleting the item
                  widget.refreshNotesList.call();

                  (context as Element).reassemble();
                }
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.note.besoin,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

