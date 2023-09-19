import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/checkbox.dart';
import 'package:design_system/ui/snackBar.dart';
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
      debugShowCheckedModeBanner: false,
    );
  }
}
