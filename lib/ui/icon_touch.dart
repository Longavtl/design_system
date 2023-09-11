import 'package:flutter/material.dart';

class FTouchArea extends StatelessWidget {
  final double width = 40;
  final double height= 40;
  final IconData icon;
  final Function? onTap;

  FTouchArea({
    required this.icon,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkWell(
        child: Icon(icon, size: 24),
        onTap: () { onTap!();},
        ),
    );
  }

}