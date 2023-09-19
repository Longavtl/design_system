import 'package:flutter/material.dart';
class Icon_Custom extends StatelessWidget {
  final String imgIcon;
  Icon_Custom({
    this.imgIcon = 'assets/icons/icons_button/icon_button_size40.png',
  }) ;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
        imgIcon,
    fit: BoxFit.cover,);
  }
}