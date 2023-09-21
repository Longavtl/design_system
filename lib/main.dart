import 'package:design_system/ui/toolbar.dart';
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
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: FToolbar(listChild: 1)
          )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
