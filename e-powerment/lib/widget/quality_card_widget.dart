import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/notes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class QualityCardWidget extends StatefulWidget {
  const QualityCardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Quality note;
  final int index;

  @override
  State<QualityCardWidget> createState() => _QualityCardWidgetState();
}

class _QualityCardWidgetState extends State<QualityCardWidget> {
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
    );
  }
}
