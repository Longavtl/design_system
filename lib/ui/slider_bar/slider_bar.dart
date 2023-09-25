import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/slider_bar/FRange_thumb_shape.dart';
import 'package:design_system/ui/slider_bar/FThumb_shape.dart';
import 'package:design_system/ui/slider_bar/F_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Slider_Bar_Custom extends StatefulWidget {
  Slider_Bar_Custom({
    required this.state,
    required this.list_child,
    this.value1=10,
    this.range_value=const RangeValues(10, 80),
});
  double value1 ;
  RangeValues range_value;
  final State_Slider state;
  final List_Child_Slider list_child;
  @override
  State<Slider_Bar_Custom> createState() => _Slider_Bar_CustomState();
}
class _Slider_Bar_CustomState extends State<Slider_Bar_Custom> {
  bool isHovered = false;
  bool isPressed = false;
  double _lowerValue = 50;
  double _upperValue = 180;
  final double max=10, min=0, value=7;
  final void Function(double) onValueChange=(_){};
  @override
  Widget build(BuildContext context) {
    switch(widget.state) {
      case State_Slider.Default:
        switch(widget.list_child){
          case List_Child_Slider.Once:
            return Container(
                height: 20,
                width: 320,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    thumbShape: isHovered ?FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 30):FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 20),
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                    min: min,
                    max: max,
                    value: widget.value1,
                    onChanged: (value) {
                      setState(() {
                        widget.value1 = value;
                      });
                    },
                  ),
                )
            );
          case List_Child_Slider.Range:

            return Container(
              height: 20,
              width: 320,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isHovered ? CustomRangeShape(30,FColor.blueList[5].value) : CustomRangeShape(20,FColor.blueList[5].value),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        widget.range_value = values;
                      });
                    },
                  ),
                ),
              ),
            );
          case List_Child_Slider.Video:
            return Container(
              height: 20,
              width: 320,
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    isPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    isPressed = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isPressed ? CustomRangeShape(30,FColor.blueList[5].value) : CustomRangeShape(20,FColor.blueList[5].value),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        widget.range_value = values;
                      });
                    },
                  ),
                ),
              ),
            );
        }
      case State_Slider.Active:
        switch(widget.list_child){
          case List_Child_Slider.Once:
            return Container(
                height: 20,
                width: 320,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    thumbShape: isHovered ?FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 30):FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 20),
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                    onChangeStart: (value) {
                      setState(() {
                        isHovered=true;
                      });
                    },
                    onChangeEnd: (value) {
                      setState(() {
                        isHovered=false;
                      });
                    },
                    min: min,
                    max: max,
                    value: widget.value1,
                    onChanged: (value) {
                      setState(() {
                        widget.value1 = value;
                      });
                    },
                  ),
                )
            );
          case List_Child_Slider.Range:

            return Container(
              height: 20,
              width: 320,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isHovered ? CustomRangeShape(30,FColor.blueList[5].value) : CustomRangeShape(20,FColor.blueList[5].value),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    onChangeStart: (value) {
                      setState(() {
                        isHovered=true;
                      });
                    },
                    onChangeEnd: (value) {
                      setState(() {
                        isHovered=false;
                      });
                    },
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        widget.range_value = values;
                      });
                    },
                  ),
                ),
              ),
            );
          case List_Child_Slider.Video:
            return Container(
              height: 20,
              width: 320,
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    isPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    isPressed = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.blueList[5].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isPressed ? CustomRangeShape(30,FColor.blueList[5].value) : CustomRangeShape(20,FColor.blueList[5].value),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                      setState(() {
                        widget.range_value = values;
                      });
                    },
                  ),
                ),
              ),
            );
        }
      case State_Slider.Disable:
        switch(widget.list_child){
          case List_Child_Slider.Once:
            return Container(
                height: 20,
                width: 320,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.greyList[4].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    thumbShape: isHovered ?FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 30,ColorShape: FColor.greyList[4].value,):FThumb_Shape(tickMarkRadius: value, sliderValue: 8,WidthShape: 20,ColorShape: FColor.greyList[4].value,),
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                    min: min,
                    max: max,
                    value: widget.value1,
                    onChanged: (value) {
                    },
                  ),
                )
            );
          case List_Child_Slider.Range:

            return Container(
              height: 20,
              width: 320,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.greyList[4].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isHovered ? CustomRangeShape(30,FColor.greyList[4].value,) : CustomRangeShape(20,FColor.greyList[4].value,),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                    },
                  ),
                ),
              ),
            );
          case List_Child_Slider.Video:
            return Container(
              height: 20,
              width: 320,
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    isPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    isPressed = false;
                  });
                },
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: FColor.greyList[4].value,
                    inactiveTrackColor: FColor.greyList[2].value,
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    rangeThumbShape: isPressed ? CustomRangeShape(30,FColor.greyList[4].value,) : CustomRangeShape(20,FColor.greyList[4].value,),
                    thumbShape: FThumb_Shape(tickMarkRadius: value, sliderValue: 8),
                  ),
                  child: RangeSlider(
                    values: widget.range_value,
                    min: 0,
                    max: 100,
                    labels: RangeLabels(
                      widget.range_value.start.round().toString(),
                      widget.range_value.end.round().toString(),
                    ),
                    onChanged: (values) {
                    },
                  ),
                ),
              ),
            );
        }
    }
  }
}
// child: Slider_Bar_Custom(state: State_Slider.Disable, list_child: List_Child_Slider.Once,value1: 2,)