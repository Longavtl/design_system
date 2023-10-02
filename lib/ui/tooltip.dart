import 'package:design_system/style/model/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ArrowPosition { top, bottom, center }

class FTooltip extends StatelessWidget {

  final ArrowPosition arrowPosition;
  final  ContentAlign align;
  final String text;
  bool isShow;

  FTooltip({
    this.isShow = false,
    required this.arrowPosition,
    required this.align,
    this.text = 'Message'
  });
  
  @override
  Widget build(BuildContext context){
    return isShow 
    ? SizedBox(
      height: 60,
      child: Stack(
        children: [ 
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5,
            child: Container(
                child: Icon(CupertinoIcons.arrowtriangle_up_fill,
                  color: Colors.blue,)
              ),
          ),
          Positioned(
            top: 12,
            left: MediaQuery.of(context).size.width * 0.5,
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal:12),
                child: Center(child:Text(text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )),
              ),
          ),
        ]
      ),
    ) 
    : Container();
  }
}