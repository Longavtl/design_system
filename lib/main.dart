import 'package:design_system/style/model/color.dart';
import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/progressBar.dart';
import 'package:design_system/ui/scrollBar.dart';
import 'package:design_system/ui/toolbar.dart';
import 'package:flutter/material.dart';


void main() {
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = FColor.blueList.firstWhere((element) => element.name == 'blue7').value;
    Color success = FColor.greenList.firstWhere((element) => element.name == 'green7').value;
    Color error = FColor.redList.firstWhere((element) => element.name == 'red7').value;
    Color warning = FColor.orangeList.firstWhere((element) => element.name == 'orange5').value;
    Color disabled = FColor.greyList.firstWhere((element) => element.name == 'grey7').value;
    Color fdefault = FColor.greyList.firstWhere((element) => element.name == 'grey3').value;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: FScrollBar(
              child: Text('test'),
              direction: Direction.horizontal,
              )
          )
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
