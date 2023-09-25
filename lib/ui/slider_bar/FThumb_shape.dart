import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class FThumb_Shape extends SliderComponentShape {
  final double tickMarkRadius;
  final double sliderValue;
  double WidthShape;
  Color ColorShape;
  FThumb_Shape({
    required this.tickMarkRadius,
    required this.sliderValue,
    this.WidthShape=20,
    this.ColorShape=Colors.black38,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(tickMarkRadius, tickMarkRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow}
      ) {
    final Canvas canvas = context.canvas;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromCenter(center: center, width: WidthShape, height: WidthShape), const Radius.circular(40)),
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

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 8;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}