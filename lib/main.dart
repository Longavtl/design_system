import 'package:design_system/ui/Chart/chart.dart';
import 'package:design_system/ui/button/button.dart';
import 'package:design_system/ui/card/card_items.dart';
import 'package:design_system/ui/card/card_theme.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:design_system/ui/number_picker/number_picker.dart';
import 'package:design_system/ui/radio/radio_custom.dart';
import 'package:flutter/material.dart';


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
          child:Radio_Custom(
            Label: 'l',
            Check: false,
            Position:'No label' ,
            State_Radio:'dd' ,
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
