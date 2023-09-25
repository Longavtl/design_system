import 'package:design_system/style/model/color.dart';
import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/button.dart';
import 'package:flutter/material.dart';

class FSnackBar extends StatelessWidget {

  final Device device;
  final SnackBarStyle listChild;
  final SnackBarState state;
  final String title;
  Function()? onTap;

  FSnackBar({
    required this.device,
    required this.listChild,
    required this.state,
    this.title = 'Default message',
    this.onTap
  });

  @override
  Widget build(BuildContext context){

    Color primary = FColor.blueList.firstWhere((element) => element.name == 'blue7').value;
  Color success = FColor.greenList.firstWhere((element) => element.name == 'green7').value;
  Color error = FColor.redList.firstWhere((element) => element.name == 'red7').value;
  Color warning = FColor.orangeList.firstWhere((element) => element.name == 'orange5').value;
  
  Color color = (state == SnackBarState.info) ? primary 
    : state == SnackBarState.success ? success 
    : state == SnackBarState.error ? error 
    : state == SnackBarState.warning ? warning 
    : Colors.black;
  IconData icon = state == SnackBarState.info ? Icons.info 
  : state == SnackBarState.warning ? Icons.warning
  : state == SnackBarState.error ? Icons.close
  : state == SnackBarState.success ? Icons.check_circle_rounded : Icons.info;

    return listChild == SnackBarStyle.color 
    ? Container(
      width: 382,
      height: 48,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            child: Icon(icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 272,
            child: Text(title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: const Center(
              child: Text('Button',
              style: TextStyle(
                color: Colors.white,
              )  
              ),
            ),
          )
        ],
      ),
    )
    : Container(
      width: 382,
      height: 48,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            child: Icon(icon,
              color: color,
            ),
          ),
          SizedBox(
            width: 298,
            child: Text(title,
              style: TextStyle(
                color: color,
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Center(
              child: Icon(Icons.arrow_forward_ios,
                  color: color,
                  size: 16,
              )
            ),
          )
        ],
      ),
    );
  }
}