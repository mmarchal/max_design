import 'package:flutter/material.dart';
import 'package:max_design/widgets/others/design_charts.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

//Generate list of data for the charts
List<Map> fakeData = [
  {
    "year": "2004",
    "sales": 100,
    "color": Colors.red,
  },
  {
    "year": "2005",
    "sales": 75,
    "color": Colors.blue,
  },
  {
    "year": "2006",
    "sales": 25,
    "color": Colors.green,
  },
  {
    "year": "2007",
    "sales": 5,
    "color": Colors.yellow,
  },
];

Widget designChartsStory(KnobsBuilder knobsBuilder) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        DesignCharts(
          datas: fakeData,
          chartType: ChartType.bar,
        ),
        DesignCharts(
          datas: fakeData,
          chartType: ChartType.line,
        ),
        DesignCharts(
          datas: fakeData,
          chartType: ChartType.pie,
        ),
      ],
    );
