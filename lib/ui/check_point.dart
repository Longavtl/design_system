import 'package:flutter/material.dart';

class Check_Point_Custom extends StatelessWidget {
  Check_Point_Custom(
      this.value,
  );
  int value;
  @override
  Widget build(BuildContext context) {
    switch (value){
      case 1:
        return Container(
          child: Image.asset('assets/icons/error.png'),
        );
      case 2:
        return Container(
          child: Image.asset('assets/icons/loading.png'),
        );
      case 3:
        return Container(
          child: Image.asset('assets/icons/success.png'),
        );
    }
    return Container();
  }
}
