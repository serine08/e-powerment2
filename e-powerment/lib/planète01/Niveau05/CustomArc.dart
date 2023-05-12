import 'dart:math';
import 'dart:ui';

import 'package:e_empowerment/plan%C3%A8te01/Niveau05/utils.dart';
import 'package:flutter/material.dart';

class CustomArc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomArcPainter(),
      size: Size(kDiameter, kDiameter),
    );
  }
}
class CustomArcPainter extends CustomPainter {
  final List<Color> arcColors = [
    Colors.red.shade900,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lightGreen,
    Colors.green,
  ];

  @override
  void paint(Canvas canvas, Size size) {
    double arcStartAngle = pi;
    double arcEndAngle = 2 * pi;

    double arcLength = arcEndAngle - arcStartAngle;
    double arcSegmentLength = arcLength / arcColors.length;

    for (int i = 0; i < arcColors.length; i++) {
      double startAngle = arcStartAngle + (i * arcSegmentLength);
      double endAngle = startAngle + arcSegmentLength;

      Paint paint = Paint()
        ..color = arcColors[i]
        ..strokeWidth = 20.0
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round;

      var path = Path()
        ..moveTo(0, size.height / 2)
        ..addArc(
          Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            width: size.width,
            height: size.height,
          ),
          startAngle,
          endAngle - startAngle,
        );

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
