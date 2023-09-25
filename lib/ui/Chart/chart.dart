// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
//
// class MyChart extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   MyChart({Key? key}) : super(key: key);
//
//   @override
//   State<MyChart> createState() => _MyChartState();
// }
//
// class _MyChartState extends State<MyChart> {
//   List<_SalesData> data = [
//     _SalesData('T2', 35),
//     _SalesData('T3', 28),
//     _SalesData('T4', 34),
//     _SalesData('T5', 32),
//     _SalesData('T6', 40),
//     _SalesData('T7', 25),
//     _SalesData('CN', 38)
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//           //Initialize the chart widget
//           SfCartesianChart(
//               primaryXAxis: CategoryAxis(),
//               // Enable tooltip
//               tooltipBehavior: TooltipBehavior(enable: true),
//               series: <ChartSeries<_SalesData, String>>[
//                 LineSeries<_SalesData, String>(
//                     dataSource: data,
//                     xValueMapper: (_SalesData sales, _) => sales.year,
//                     yValueMapper: (_SalesData sales, _) => sales.sales,
//                     name: 'Sales',
//                     // Enable data label
//                     dataLabelSettings: DataLabelSettings(isVisible: true))
//               ]),
//
//         ]));
//   }
// }
//
// class _SalesData {
//   _SalesData(this.year, this.sales);
//
//   final String year;
//   final double sales;
// }