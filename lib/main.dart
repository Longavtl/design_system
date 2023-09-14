import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/button.dart';
import 'package:design_system/ui/chart.dart';
import 'package:design_system/ui/icon.dart';
import 'package:design_system/ui/layout.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: PieChart(
                strokeWidth: 30,
                data: const [
                   PieChartData(Colors.blue, 40),
                   PieChartData(Colors.green, 30),
                   PieChartData(Colors.cyan, 10),
                   PieChartData(Colors.orange, 10),
                   PieChartData(Colors.yellow, 10),
                ], 
              radius: 100
              ),
              
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: FButton(
                ghost: true,
                title: "Button",
                type: "success",
                onPressed: (){},
              ),
            )
          ],
        )
      ),
    );
  }
}