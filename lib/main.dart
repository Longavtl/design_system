import 'package:design_system/ui/checkbox.dart';
import 'package:design_system/ui/contenttext.dart';
import 'package:design_system/ui/divider.dart';
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
            child: PopUp(
              device: Device.mobile, 
              listChild: Noti.error, 
              mediaPosition: MediaPosition.above, 
              actionView: ActionView.horizontalButton,
              subTitle: T.no, 
              body: T.yes,
              title: 'Popup over',
              bodyText: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              )
            
          ),
        )
      ),
    );
  }
}