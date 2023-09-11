import 'package:design_system/style/color.dart';
import 'package:design_system/style/effect.dart';
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

  final ColorItem _colorItem = FColor.blueList.firstWhere((element) => element.name == "blue1");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: _colorItem.value,
            child: Center(
              child: FEffect(
                width: 200, 
                height: 200, 
                left: true,
                child: const Center(child: Text('Test', style: TextStyle(color: Colors.black),)),
                )
              ),
          )
        ),
      ),
    );
  }
}
