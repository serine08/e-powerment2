import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau1/Qualit%C3%A9/Souvenir/Souvenir2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class QualityCardWidget2 extends StatefulWidget {
  QualityCardWidget2({
    Key? key,
    required this.note,
    required this.index,
    required this.onNoteTap,

  }) : super(key: key);

  final Quality note;
  final int index;
  final Function(Quality) onNoteTap;
  @override
  _QualityCardWidget2State createState() => _QualityCardWidget2State();
}

class _QualityCardWidget2State extends State<QualityCardWidget2> {
  bool _isTapped = false;

  void _handleTap() {

    print("object");
    Navigator.push(

      context,
      MaterialPageRoute(
        builder: (context) => Souvenir2(text: widget.note.quality),
      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    final nuageSize = Size(
      widget.note.quality.length * 8.0, // adjust the multiplier as needed to get the desired size
      widget.note.quality.length * 10.0, // adjust the multiplier as needed to get the desired size
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/nuage3.png"),
        ),
      ),
     
      child: SizedBox(
        width: nuageSize.width,
        height: nuageSize.height,
        child: Stack(
          children: [
            const Positioned.fill(
              child: Material(
                color: Colors.transparent,
              ),
            ),
            Positioned.fill(

              child: Center(
                child: InkWell(

                  onTap: _handleTap,

                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            widget.note.quality,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
