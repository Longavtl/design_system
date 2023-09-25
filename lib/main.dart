import 'package:design_system/custom_slider.dart';
import 'package:design_system/ui/bar/F_tab_bar.dart';
import 'package:design_system/ui/bar/search_bar.dart';
import 'package:design_system/ui/bar/segmented_bar.dart';
import 'package:design_system/ui/bar/tab_bar.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:design_system/ui/slider_bar/F_size.dart';
import 'package:design_system/ui/slider_bar/slider_bar.dart';
import 'package:design_system/ui/test.dart';
import 'package:design_system/ui/text_filed/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Center(
          // child: TextFiledCustom(),
        ),
      ),
    );
  }
}
