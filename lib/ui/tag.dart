import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:flutter/material.dart';

enum TagListChild { solid, textAction }
enum TagPosition { textOnly, iconRight, iconLeft, iconOnly } 

class Tag extends StatelessWidget {

  TagListChild listChild;
  TagPosition position;
  double size;
  String text;
  String pathIcon;

  Tag({
    required this.listChild,
    required this.position,
    required this.size,
    this.text = 'Tag',
    this.pathIcon = 'assets/icons/tag.png'
  });

  @override
  Widget build(BuildContext context){

    Color bgColor = FColor.blueList.firstWhere((e) => e.name == "blue1").value;
    Color textColor = FColor.blueList.firstWhere((e) => e.name == "blue6").value;

    return Container(
      height: size,
      width: position == TagPosition.iconOnly ? size : null,
      padding: position == TagPosition.iconOnly
      ? EdgeInsets.zero
      : EdgeInsets.only(
        top: size/4 < 8 ? 0 : size/4,
        bottom: size/4 < 8 ? 0 : size/4,
        left: size/2,
        right: size/2
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
        color: listChild == TagListChild.solid ? bgColor : Colors.transparent
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: position == TagPosition.iconLeft ? TextDirection.ltr : TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          position == TagPosition.iconOnly
          ?Container()
          :Container(
            margin: EdgeInsets.only(
              right: 2,
              left: 2
            ),
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: size/3
              ),
            ),
          ),
          position == TagPosition.textOnly
          ?Container()
          :Container(
            width: position == TagPosition.iconOnly ? size/1.5 : 16,
            height: position == TagPosition.iconOnly ? size/1.5 : 16,
            child: Icon_Custom(imgIcon: pathIcon,),
          )
        ],
      ),
    );
  }
}