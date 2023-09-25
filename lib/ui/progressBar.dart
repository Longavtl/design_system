import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  double percentage;
  Color color;
  double width;
  double height;
  double borderRadius;
  
  ProgressBar({
    required this.percentage,
    required this.color,
    this.width = 320,
    this.height = 8,
    this.borderRadius = 8
  }) :assert(
    percentage >= 0 && percentage <= 100
  );
  
  @override
  Widget build(BuildContext context) {

    Color fdefault = FColor.greyList.firstWhere((element) => element.name == 'grey3').value;
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          decoration: BoxDecoration(
            color: fdefault,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ),
        Container(
          width: width*percentage/100,
          height: height,
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        ),
      ],
    );
  }
}  
  
