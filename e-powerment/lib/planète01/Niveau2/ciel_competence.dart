import 'dart:math';

import 'package:e_empowerment/Quality.dart';

import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/Souvenir2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence_card_widget.dart';

import 'package:e_empowerment/widget/quality_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Ciel02.dart';




class CielCompetence extends StatefulWidget {
  @override
  _CielCompetenceState createState() => _CielCompetenceState();
}

class _CielCompetenceState extends State<CielCompetence> {
  late List<Competence> notes;
  bool isLoading = false;
  late ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    refreshNotes();
  }

  @override
  void dispose() {
    //  NotesDatabase.instance.close();
    _scrollController.dispose();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllCompetence();

    setState(() => isLoading = false);
  }
  void handleNoteTap(Competence note) {
    // Do something with the tapped note here
    print('Tapped note: ${note.competence}');



  }


  @override
  Widget build(BuildContext context) => Scaffold(


      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Align(
              alignment: const Alignment(0,-0.8),
              child: RichText(
                text: const TextSpan(
                  text: 'Voici le ciel de tes compétences! ',
                  style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),
                ),

                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Center(
                child: isLoading
                    ? const CircularProgressIndicator()
                    : notes.isEmpty
                    ? const Text(
                  'No Notes',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
                    : buildNotes(handleNoteTap),
              ),
            ),


            Align(
              alignment: const Alignment(0.9,0.98),
              child: IconButton(


                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return    CielCompetence02();
                  },),);
                }, icon: const Icon(Icons.navigate_next),
                iconSize: 40,
                color: Colors.white,


              ),
            )

          ],
        ),

      )
  );


  Widget buildNotes(Function(Competence) onNoteTap) {
    final List<StaggeredTile> _staggeredTiles = List.generate(
      notes.length,
          (index) => StaggeredTile.count(
        Random().nextInt(2) + 1,
        Random().nextInt(2) + 1,
      ),
    );
    final scrollController = ScrollController();

    return Align(
      alignment: Alignment.center,
      child: Scrollbar(
        thickness: 8,
        controller: scrollController,
        scrollbarOrientation: ScrollbarOrientation.right,
        interactive: true,
        thumbVisibility: true,
trackVisibility: true,
        child: StaggeredGridView.countBuilder(
          controller: scrollController,
          padding: const EdgeInsets.all(6),
          itemCount: notes.length,
          staggeredTileBuilder: (index) => _staggeredTiles[index],
          crossAxisCount: 4,
          itemBuilder: (context, index) {
            final note = notes[index];
            return Container(
              child: CompetenceCardWidget(
                note: note,
                index: index,
              ),
            );
          },
        ),
      ),

    );
  }





}



