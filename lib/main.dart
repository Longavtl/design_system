<<<<<<< HEAD
import 'package:design_system/style/color.dart';
import 'package:design_system/style/effect.dart';
=======
import 'package:design_system/ui/layout.dart';
>>>>>>> d53a941cf1d9e095306e671be41a5bf8396b18f0
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
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
=======
      home: Scaffold(
        body: Center()
>>>>>>> d53a941cf1d9e095306e671be41a5bf8396b18f0
      ),
    );
  }
}
