
import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class FDivider extends StatelessWidget {

  FDivider();
  
  @override
  Widget build(BuildContext context) {
    Color grey3 = FColor.greyList[2].value;
    return 
      Divider(
        thickness: 1,
        indent: 20,
        endIndent: 0,
        color: grey3,
      );
  }

}