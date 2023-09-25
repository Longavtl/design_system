import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';
class CustomRangeShape extends RangeSliderThumbShape {
  static const double _thumbSize = 10.0;
  CustomRangeShape(
      this.WidthShape,
      this.ColorShape
      );
  double WidthShape=20;
  Color ColorShape=FColor.greyList[4].value;
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete){
    return Size.fromRadius(_thumbSize);
  }
  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        bool? isDiscrete,
        bool? isEnabled,
        bool? isOnTop,
        TextDirection? textDirection,
        required SliderThemeData sliderTheme,
        Thumb? thumb,
        bool? isPressed,
      }){
    final Canvas canvas = context.canvas;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromCenter(center: center, width:WidthShape, height:WidthShape), const Radius.circular(40)),
      Paint()..color = Colors.white,
    );// vẽ 1 hình tròn có kích thước 36,36
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromCenter(center: center, width: WidthShape, height: WidthShape), const Radius.circular(40)),
      Paint()..color = ColorShape
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
  }
  }