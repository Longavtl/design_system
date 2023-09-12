import 'package:flutter/material.dart';

class Icon_Click extends StatelessWidget {
  Icon_Click(this.url_image) ;
  String url_image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 48,
        width: 48,
        child: Center(
          child: Image.asset(
            url_image,
            width: 24,
            height: 24,
          ),
        )
      ),
    );
  }
}
