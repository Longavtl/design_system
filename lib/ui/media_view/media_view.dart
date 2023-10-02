import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class Media_View extends StatelessWidget {
  Media_View({
    this.height=50,
    this.width=50,
    this.border=50
});
  double border;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: FColor.greyList[2].value,
      ),
    );
  }
}
