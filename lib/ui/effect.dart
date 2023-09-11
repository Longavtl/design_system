import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class FEffect extends StatelessWidget {
  final double width;
  final double height;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final Widget? child;
  FEffect({
    required this.width,
    required this.height,
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
    this.child
  });

  ColorItem grey1 = FColor.greyList.firstWhere((element) => element.name == "grey1");

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border(
          top: (top || !(top || bottom || left || right)) ? BorderSide(color: grey1.value, width: 1.0) : BorderSide.none,
          bottom: (bottom || !(top || bottom || left || right)) ? BorderSide(color: grey1.value, width: 1.0) : BorderSide.none,
          left: (left || !(top || bottom || left || right)) ? BorderSide(color: grey1.value, width: 1.0) : BorderSide.none,
          right: (right || !(top || bottom || left || right)) ? BorderSide(color: grey1.value, width: 1.0) : BorderSide.none,
        ),
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            spreadRadius: 4,
            blurRadius: 15,
            offset: Offset(0, 3),
          )
        ]
      ),
      child: child,
      
    );
  }

}