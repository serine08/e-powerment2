

import 'package:e_empowerment/Humeur.dart';
import 'package:e_empowerment/Pens%C3%A9es.dart';
import 'package:e_empowerment/PricePoint.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';


class LineChartWidget extends StatelessWidget {
  final List<Humeur> pointsH;


  const LineChartWidget(this.pointsH , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(

          LineChartData(

              lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.white,
              )
          ),
              lineBarsData: [

        LineChartBarData(

            color: Colors.deepPurple,
            spots: pointsH.map((point)=> FlSpot( point.place! * 1.00 ,point.Rating*1.00)).toList(),
          isCurved: false,
          dotData: FlDotData(show:  true)),
      ])),
    );
  }
}
class LineChartWidgetP extends StatelessWidget {
  final List<Pensee> pointsP;


  const LineChartWidgetP(this.pointsP , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(

          LineChartData(

              lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Colors.white,
                  )
              ),
              lineBarsData: [

            LineChartBarData(
              color: Colors.deepPurple,
                spots: pointsP.map((point)=> FlSpot( point.place! * 1.00 ,point.RatingP*1.00)).toList(),
                isCurved: false,

                dotData: FlDotData(show:  true))
          ])),
    );
  }
}
