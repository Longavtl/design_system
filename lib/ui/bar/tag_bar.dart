import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:flutter/material.dart';

class Tag_Bar extends StatelessWidget {
  Tag_Bar({
    required this.width,
    required this.height,
    required this.isColor,
    this.Icon_left=false,
    this.Icon_right=false,
    this.Icons
}) ;
    Icon_Custom? Icons;
    bool Icon_left;
    bool Icon_right;
    double width;
    double height;
    Color isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: isColor,
        borderRadius: BorderRadius.circular(32)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Icon_left==true? (Icons != null ? Icons! : Icon_Custom()):SizedBox(),
          Text('data'),
          Icon_right==true? (Icons != null ? Icons! : Icon_Custom()):SizedBox(),
        ],
      ),
    );
  }
}
