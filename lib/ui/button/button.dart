import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:flutter/material.dart';
class Button_CusTom extends StatelessWidget {
  Button_CusTom({
    required this.List_child,
    required this.Size,
    required this.Position,
    required this.Status,
    this.Content = 'Button',
    this.Icons,
    this.isIcons='Circular',
  });
  String List_child;
  String Size;
  String Position;
  String Status;
  String Content;
  Icon_Custom? Icons;
  String isIcons;

  @override
  Widget build(BuildContext context) {
     Color Button_color=(Status == "Primary") ? FColor.blueList[5].value :
    ((Status == "Success") ? FColor.greenList[5].value:
    (Status == "Error") ?FColor.redList[5].value :
    ((Status == "Warning") ? FColor.yellowList[5].value :
    ((Status == "Disabled") ? FColor.greyList[5].value : FColor.greyList[4].value)));
     //
    switch (List_child) {
      case 'Solid':
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Button_color
          ),
          height: 48,
          child: MaterialButton(
            onPressed: () {},
            child: isIcon_Row(isIcons)
          ),
        );
      case 'Ghost':
        return Container();
      case 'Dash':
        return Container();
      default:
        return Container(); // Xử lý trường hợp khác nếu cần
    }
  }

  Row isIcon_Row(String isIcons) {
    switch(isIcons) {
      case 'No icon':
          return  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(Content,
                style: TextStyle(color: Colors.white),
              )
            ],
          );
      case 'Icon left':
        return  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icons != null ? Icons! : Icon_Custom(),
            SizedBox(width: 4,),
            Text(Content,
              style: TextStyle(color: Colors.white),
            )
          ],
        );
      case 'Icon right':
        return  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Content,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 4,),
            Icons != null ? Icons! : Icon_Custom(),
          ],
        );
      case 'Circular':
        return  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Icons != null ? Icons! : Icon_Custom(),
          ],
        );
    }
    return Row();
  }
}
