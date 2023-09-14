import 'package:design_system/ui/Chart/chart.dart';
import 'package:design_system/ui/button/button.dart';
import 'package:design_system/ui/card/card_theme.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:design_system/ui/number_picker/number_picker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


void main() {
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Button_CusTom(List_child: 'Solid', Size: '', Position: '', Status: 'Error',
        )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
