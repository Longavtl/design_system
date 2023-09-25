// import 'package:flutter/material.dart';
//
// class CustomRangeSlider extends StatefulWidget {
//   final RangeValues values;
//   final double min;
//   final double max;
//   final ValueChanged<RangeValues>? onChanged;
//
//   CustomRangeSlider({
//     required this.values,
//     required this.min,
//     required this.max,
//     this.onChanged,
//   });
//
//   @override
//   _CustomRangeSliderState createState() => _CustomRangeSliderState();
// }
//
// class _CustomRangeSliderState extends State<CustomRangeSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return RangeSlider(
//       values: widget.values,
//       min: widget.min,
//       max: widget.max,
//       onChanged: widget.onChanged,
//       // Tạo custom thumb shape ở đây
//       thumbShape: _CustomThumbShape(),
//     );
//   }
// }
//
// class _CustomThumbShape extends RoundSliderThumbShape {
//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) {
//     return Size(36.0, 36.0); // Kích thước của custom thumb shape
//   }
//
//   @override
//   void paint(
//   PaintingContext context,
//   Offset center, {
//   required Animation<double> activationAnimation,
//   required Animation<double> enableAnimation,
//   required bool isDiscrete,
//   required TextPainter labelPainter,
//   required RenderBox parentBox,
//   required SliderThemeData sliderTheme
