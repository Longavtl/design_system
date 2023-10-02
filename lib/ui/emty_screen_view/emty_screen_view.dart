import 'package:flutter/material.dart';

class Emty_Sreen_View extends StatelessWidget {
  Emty_Sreen_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('name')
          ],
        ),
      ) ,
    );
  }
}
