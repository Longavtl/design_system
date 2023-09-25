import 'package:design_system/style/model/enum.dart';
import 'package:flutter/material.dart';

class FScrollBar extends StatefulWidget {

  List<Widget> children;
  Direction direction;
  double radius;
  double thickness;

  FScrollBar({
    required this.children,
    this.direction = Direction.vertical,
    this.radius = 8,
    this.thickness = 6
  });

  @override
  _FScrollBarState createState() => _FScrollBarState();
}

class _FScrollBarState extends State<FScrollBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Scrollbar(
                thickness: widget.thickness,
                radius: Radius.circular(widget.radius),
                child: ListView(
                  scrollDirection: widget.direction == Direction.vertical ? Axis.vertical : Axis.horizontal,
                  children: widget.children
                )
                ),
    );
  }
}