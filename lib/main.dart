import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/checkbox.dart';
import 'package:design_system/ui/snackBar.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: FSnackBar(
                  device: Device.mobile, 
                  listChild: SnackBarStyle.white, 
                  state: SnackBarState.error,
                  onTap: (){
                    
                  }
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}