import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class FOverlay extends StatefulWidget {

  bool show;
  Widget child;

  FOverlay({
    this.show = false,
    required this.child
  });

  @override
  State<FOverlay> createState() => _FOverlayState();
}

class _FOverlayState extends State<FOverlay> {
  @override
  Widget build(BuildContext context){
    Color bgColor = FColor.greyList.firstWhere((element) => element.name == 'grey9').value;
    return widget.show ? Stack(
      children: [
        InkWell(
          onTap: (){
              setState(() { 
              widget.show = false;
            });
          },
          child: Container(
              color: bgColor,
              width: double.infinity,
              height: double.infinity,
          ),
        ),
        Center(child: widget.child)
      ],
    ) 
    : Container();
  }
}