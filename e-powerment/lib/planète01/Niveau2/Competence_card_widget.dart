import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CompetenceCardWidget extends StatefulWidget {
  CompetenceCardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Competence note;
  final int index;

  @override
  _CompetenceCardWidgetState createState() => _CompetenceCardWidgetState();
}
class _CompetenceCardWidgetState extends State<CompetenceCardWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/nuage3.png"),
        ),
      ),
      constraints: const BoxConstraints(),
      child: SizedBox(
        width: widget.note.competence.length * 20.0,
        height: widget.note.competence.length * 20.0,
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              _isHovered = false;
            });
          },
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
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.note.competence,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
              ),
              if (_isHovered)
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.grey[200],
                    ),
                    child: Text(
                      widget.note.competence,
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
    );
  }
}


class HoverDetails extends StatefulWidget {
  final Widget child;
  final Widget Function(BuildContext, bool) builder;

  const HoverDetails({required this.child, required this.builder});

  @override
  _HoverDetailsState createState() => _HoverDetailsState();
}

class _HoverDetailsState extends State<HoverDetails> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: widget.builder(context, _isHovering),
    );
  }
}
