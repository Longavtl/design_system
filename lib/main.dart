import 'package:design_system/ui/checkbox.dart';
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
        body: Center(
          child: Checkbox_Custom(
            size: 24,
            label: "Yes",
            check: "No",
            labelPosition: "Left",
            state: "Active",
            title: "Testing",
          )
        )
      ),
    );
  }
}