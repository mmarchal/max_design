import 'package:flutter/material.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

enum ChartType { bar, line, pie }

const String title = 'Statistiques';

class DesignCharts extends StatelessWidget {
  final List<ChartData> datas;
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
    return Expanded(
      child: SfSparkBarChart(
        // Initialize category axis
        plotBand: const SparkChartPlotBand(
          start: 0,
          end: 2,
          color: Colors.red,
        ),
        data: datas
            .map(
              (e) => num.parse(
                e.y.toString(),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildLineChart() {
    //Parse the series list to List<Series<dynamic, nul>> type
    return Expanded(
      child: SfCartesianChart(
        title: ChartTitle(text: title),
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries>[
          // Initialize line series
          LineSeries<ChartData, String>(
            dataSource: datas,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
          )
        ],
      ),
    );
  }

  Widget _buildPieChart() {
    return SfCircularChart(
      title: ChartTitle(text: title),
      series: <CircularSeries>[
        // Initialize pie series
        PieSeries<ChartData, String>(
          dataSource: datas,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        )
      ],
    );
  }
}
