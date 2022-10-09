import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

enum ChartType { bar, line, pie }

class DesignCharts extends StatelessWidget {
  final List<Map> datas;
  final bool animate;
  final ChartType chartType;

  const DesignCharts({
    Key? key,
    required this.datas,
    this.animate = true,
    required this.chartType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (chartType) {
      case ChartType.bar:
        return _buildBarChart();
      case ChartType.line:
        return _buildLineChart();
      case ChartType.pie:
        return _buildPieChart();
    }
  }

  Widget _buildBarChart() {
    //Parse the data list to List<Series<dynamic, String>> type
    List<charts.Series<dynamic, String>> series = [
      charts.Series(
        id: "Sales",
        data: datas,
        domainFn: (dynamic sales, _) => sales["year"],
        measureFn: (dynamic sales, _) => sales["sales"],
        colorFn: (dynamic sales, _) => sales["color"],
      )
    ];

    return charts.BarChart(
      series,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [
        charts.SeriesLegend(),
      ],
    );
  }

  Widget _buildLineChart() {
    //Parse the series list to List<Series<dynamic, nul>> type
    List<charts.Series<dynamic, num>> series = [
      charts.Series(
        id: "Sales",
        data: datas,
        domainFn: (dynamic sales, _) => datas.indexOf(sales),
        measureFn: (dynamic sales, _) => sales["sales"],
        colorFn: (dynamic sales, _) => sales["color"],
      )
    ];
    return Expanded(
      child: charts.LineChart(
        series,
        domainAxis: const charts.NumericAxisSpec(
          tickProviderSpec: charts.BasicNumericTickProviderSpec(
            zeroBound: false,
          ),
          viewport: charts.NumericExtents(
            2016.0,
            2022.0,
          ),
        ),
        animate: true,
      ),
    );
  }

  Widget _buildPieChart() {
    //Parse the series list to List<Series<dynamic, String>> type
    List<charts.Series<dynamic, String>> series = [
      charts.Series(
        id: "Sales",
        data: datas,
        domainFn: (dynamic sales, _) => sales["year"],
        measureFn: (dynamic sales, _) => sales["sales"],
        colorFn: (dynamic sales, _) => sales["color"],
      )
    ];

    return charts.PieChart(
      series,
      animate: animate,
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 100,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.inside,
          ),
        ],
      ),
    );
  }
}
