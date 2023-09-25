import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class Button_CusTom extends StatelessWidget {
  Button_CusTom({
    required this.List_child,
    required this.Size,
    required this.Position,
    required this.Status,
    this.Content = 'Button',
    this.Icons,
    this.colorText
  });
  String List_child;
  int Size;
  String Position;
  String Status;
  String Content;
  Icon_Custom? Icons;
  Color ?colorText;

  @override
  Widget build(BuildContext context) {
     Color Button_color=(Status == "Primary") ? FColor.blueList[5].value :
    ((Status == "Success") ? FColor.greenList[5].value:
    (Status == "Error") ?FColor.redList[5].value :
    ((Status == "Warning") ? FColor.yellowList[5].value :
    ((Status == "Disabled") ? FColor.greyList[5].value : FColor.greyList[4].value)));
     //
     int calculateButtonSize(int size, {String? position}) {
       if (position == 'Circular') {
         if (size == 48) return 48;
         if (size == 40) return 40;
         if (size == 32) return 32;
       }
       else{
         if (size == 48) return 124;
         if (size == 40) return 98;
         if (size == 32) return 86;
         return 78;
       }
       return 24;
     }
     //
    switch (List_child) {
      case 'Solid':
        return Container(
          // padding: EdgeInsets.only(left: 24,top:12,right: 24,bottom: 12 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((Position=='Circular') ? 60 : 8),
            color: Button_color
          ),
          height: Size==48?48:((Size==40)?40:(Size==32?32:(Size==24?24:24))),
          // height: (Position=='Circular') ? 60 : 48,
          // width: (Position=='Circular') ? 60 : 124,
          width: calculateButtonSize(48,position:'Cicurlar').toDouble(),
          // width: Size==48?124:((Size==40)?98:(Size==32?86:(Size==24?78:24))),
          //width: (Size==48&&Position=='Circular'?48:(Size==40&&Position=='Circular'?40:(Size==32&&Position=='Circular'?32:(Size==24&&Position=='Circular'?24:24)))),
          child: MaterialButton(
            onPressed: () {},
            child: isIcon_Row(Position,Button_color,'Solid')
          ),
        );
      case 'Ghost':
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Button_color),
              borderRadius: BorderRadius.circular((Position=='Circular') ? 60 : 8),
          ),
          height: (Position=='Circular') ? 60 : 48,
          width: calculateButtonSize(48,position:'Cicurlar').toDouble(),
          child: MaterialButton(
              onPressed: () {},
              child: isIcon_Row(Position,Button_color,'Ghost')
          ),
        );
      case 'Dash':
        return DottedBorder(
          borderType: BorderType.RRect,
          dashPattern: [4,2],
          radius: Radius.circular((Position == 'Circular') ? 60 : 8),
          color: Button_color,
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular((isIcons == 'Circular') ? 60 : 8),
            // ),
            height: (Position== 'Circular') ? 60 : 48,
            width: calculateButtonSize(48,position:'Cicurlar').toDouble(),
            child: MaterialButton(
              onPressed: () {},
              child: isIcon_Row(Position, Button_color, 'Ghost'),
            ),
          ),
        );
      case 'Text action':
        return Text_action(Position,Content);
      default:
        return Container();
    }
  }

  Container Text_action( String Position,String Content) {
    switch(Position){
      case 'Text Only':
        return Container(
          width: 42,
          height: 22,
          child: Center(
            child: Text(Content,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14
              ),
            ),
          ),
        );
      case 'Icon left':
        return Container(
          height: 22,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icons != null ? Icons! : Icon_Custom(),
              SizedBox(width: 5,),
              Text(Content,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14
                ),
              ),
            ],
          )
        );
      case 'Icon right':
        return Container(
            height: 22,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(Content,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14
                  ),
                ),
                SizedBox(width: 5,),
                Icons != null ? Icons! : Icon_Custom(),
              ],
            )
        );
    }
    return Container();
  }

  Row isIcon_Row(String isIcons,Color Button_color ,String state) {
    switch(isIcons) {
      case 'No icon':
          return  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(Content,
                style: TextStyle(
                    color: state=='Solid'?Colors.white:Button_color,fontSize: Size==48?16:((Size==40)?14:(Size==32?14:(Size==24?14:24)))
                ),
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
              style: TextStyle(color:state=='Solid'?Colors.white:Button_color,fontSize: Size==48?16:((Size==40)?14:(Size==32?14:(Size==24?14:24))) ),
            )
          ],
        );
      case 'Icon right':
        return  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Content,
              style: TextStyle(color:state=='Solid'?Colors.white:Button_color,fontSize: Size==48?16:((Size==40)?14:(Size==32?14:(Size==24?14:24)))),
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
// đã fix