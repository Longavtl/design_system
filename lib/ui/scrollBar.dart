import 'package:design_system/style/model/enum.dart';
import 'package:flutter/material.dart';

class FScrollBar extends StatefulWidget {

  Widget child;
  Direction direction;
  double radius;
  double thickness;

  FScrollBar({
    required this.child,
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
    return Scrollbar(
              thickness: widget.thickness,
              radius: Radius.circular(widget.radius),
              child: ListView.builder(
                scrollDirection: widget.direction == Direction.horizontal ? Axis.horizontal : Axis.vertical,
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20,
                            child: widget.child
                          );
                        }
                )
              );
  }
}