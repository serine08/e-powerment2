import 'dart:math';

import 'package:e_empowerment/Quality.dart';

import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/page_niveau03.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/Souvenir2.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence_card_widget.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/page_niveau2.dart';

import 'package:e_empowerment/widget/quality_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';




class CielCompetence02 extends StatefulWidget {
  @override
  _CielCompetence02State createState() => _CielCompetence02State();
}

class _CielCompetence02State extends State<CielCompetence02> {
  late List<Competence> notes;
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

    this.notes = await NotesDatabase.instance.readAllCompetence();

    setState(() => isLoading = false);
  }
  void handleNoteTap(Competence note) {
    // Do something with the tapped note here
    print('Tapped note: ${note.competence}');



  }


  @override
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Align(
                alignment: const Alignment(0, -0.8),
                child: RichText(
                  text: const TextSpan(
                    text: 'Voici le ciel de tes compétences! ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
                    style: TextStyle(
                        color: Colors.white, fontSize: 24),
                  )
                      : buildNotes(handleNoteTap),
                ),
              ),

            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color(0xff000000).withOpacity(0.4),
            ),
          ),
          const Positioned(
            top: 220,
            left: 40,
            right: 40,
            child: SpeechBubble(
              text: 'Et voilà le ciel de tes compétences !\nC’est ce que tu sais faire et ce que tu\naimes faire, bravo ! Tu peux modifier\nle ciel en choisissant d’autres\ncompétences.',
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),

          Positioned(
            top: 220,
            left: 40,
            right: 40,
            child: CustomPaint(
              painter: CirclePainter(
                circleSizes: [16, 12, 8], // Modify the sizes here
                circlePositions: [
                  const Offset(160, 160), // Modify the positions here
                  const Offset(130, 200),
                  const Offset(100, 235),
                ],
                circleColor: Colors.white,
              ),
              child: Container(),
            ),
          ),



          // Image of the character
          Align(
            alignment: const Alignment(-0.5, 0.75),
            child: Container(
              width: 161,
              height: 161,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/momo.webp"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.9, 0.98),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return const page_niveau3();
                },),);
              },
              icon: const Icon(Icons.navigate_next),
              iconSize: 40,
              color: Colors.white,
            ),
          ),

        ],
      ),
    ),
  );




  Widget buildNotes(Function(Competence) onNoteTap) {

    final List<StaggeredTile> _staggeredTiles = List.generate(
      notes.length,
          (index) => StaggeredTile.count(
        Random().nextInt(2) +1,
        Random().nextInt(2) + 1,
      ),
    );

    return Align(
      alignment: Alignment.center,
      child: StaggeredGridView.countBuilder(
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
              //onNoteTap: onNoteTap,

            ),
          );
        },
      ),
    );
  }




}
class SpeechBubble extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const SpeechBubble({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
class CirclePainter extends CustomPainter {
  final List<double> circleSizes;
  final List<Offset> circlePositions;
  final Color circleColor;

  CirclePainter({required this.circleSizes, required this.circlePositions, required this.circleColor});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < circleSizes.length; i++) {
      final circleSize = circleSizes[i];
      final circlePosition = circlePositions[i];

      final circlePaint = Paint()
        ..color = circleColor
        ..style = PaintingStyle.fill;

      canvas.drawCircle(circlePosition, circleSize, circlePaint);
    }
  }
  @override
  bool shouldRepaint(CirclePainter oldPainter) {
    return circleSizes != oldPainter.circleSizes ||
        circlePositions != oldPainter.circlePositions ||
        circleColor != oldPainter.circleColor;
  }
// Rest of the code...
}

