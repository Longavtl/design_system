import 'package:design_system/ui/checkbox.dart';
import 'package:design_system/ui/contenttext.dart';
import 'package:design_system/ui/divider.dart';
import 'package:design_system/ui/pagination.dart';
import 'package:design_system/ui/paginationItem.dart';
import 'package:design_system/ui/popup.dart';
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
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: Pagination(
              listChild: Type.basic, 
              textField: K.no, 
              withLabel: K.no,
              totalValue: 7,
            )
          ),
        )
      ),
    );
  }
}