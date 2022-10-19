import 'package:flutter/material.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:max_design/widgets/others/design_charts.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

//Generate list of data for the charts
List<ChartData> fakeDatas = [
  ChartData('Jan', 35),
  ChartData('Feb', 28),
  ChartData('Mar', 34),
  ChartData('Apr', 32),
  ChartData('May', 40),
];

Widget designChartsStory(KnobsBuilder knobsBuilder) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        DesignCharts(
          datas: fakeDatas,
          chartType: ChartType.bar,
        ),
        DesignCharts(
          datas: fakeDatas,
          chartType: ChartType.line,
        ),
        DesignCharts(
          datas: fakeDatas,
          chartType: ChartType.pie,
        ),
      ],
    );
