import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class FButton extends StatelessWidget{
  FButton({
    Key? key,
    this.child,
    required this.onPressed,
    this.type = "default",
    this.minWidth,
    this.height,
    this.ghost = false,
    this.dash = false,
    this.textColor = Colors.white,
    this.leftIcon,
    this.rightIcon,
    this.title,
  });

  final Widget? child;
  final VoidCallback onPressed;
  final String type;
  final double? minWidth;
  final double? height;
  final bool ghost;
  final bool dash;
  final Color textColor;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final String? title;

  Color primary = FColor.blueList.firstWhere((element) => element.name == 'blue7').value;
  Color success = FColor.greenList.firstWhere((element) => element.name == 'green7').value;
  Color error = FColor.redList.firstWhere((element) => element.name == 'red7').value;
  Color warning = FColor.orangeList.firstWhere((element) => element.name == 'orange5').value;
  Color disabled = FColor.greyList.firstWhere((element) => element.name == 'grey7').value;
  Color fdefault = FColor.greyList.firstWhere((element) => element.name == 'grey3').value;
  
 
  @override
  Widget build(BuildContext context) {
    Color color = (type == "primary") ? primary :
    ((type == "success") ? success : (type == "error") ? error : 
    ((type == "warning") ? warning : 
    ((type == "disabled") ? disabled : fdefault)));
    return Container(
      width: (title == null) ? 58 : 100,
      height: (title == null) ? 58 : 48,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          // style: BorderStyle.none
        ),
        borderRadius:BorderRadius.circular((title == null) ? 50 : 8.0),
        color: (ghost || dash) ? Colors.white : color,
      ),            
      child: MaterialButton(
        onPressed: onPressed,
        // color: color,
        textColor: textColor,
        minWidth: minWidth,
        height: height,
        shape: (title == null ) ? CircleBorder() : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftIcon != null ? Icon(leftIcon, color: (ghost || dash) ? color : textColor) : Container(),
            title != null ? Text(title!, style: TextStyle(
              color: (ghost || dash) ? color : type == 'default' ? Colors.black : textColor
            )) : Container(), 
            rightIcon != null ? Icon(rightIcon, color: (ghost || dash) ? color : textColor) : Container(),
          ],
        ),
      ),
    );
  }
}