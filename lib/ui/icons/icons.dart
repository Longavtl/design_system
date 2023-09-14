import 'package:flutter/material.dart';
class Icon_Custom extends StatelessWidget {
  final String imgIcon;
  Icon_Custom({
    this.imgIcon = 'assets/icons/white_chrom.png',
  }) ;
  @override
  Widget build(BuildContext context) {
    return Image.asset(imgIcon);
  }
}