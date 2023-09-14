import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class Checkbox_Custom extends StatefulWidget {

  Checkbox_Custom({
    required this.size,
    required this.label,
    required this.check,
    required this.labelPosition,
    required this.state,
    this.title = "Checked",
  });

  final int size;
  final String label;
  String check;
  final String labelPosition;
  String state;
  final String title;

  @override
  State<Checkbox_Custom> createState() => _Checkbox_CustomState();
}

class _Checkbox_CustomState extends State<Checkbox_Custom> {
  @override
  Widget build(BuildContext context) {
    Color disabledColor = FColor.greyList.firstWhere((element) => element.name == 'grey5').value;
    Color bgColor = FColor.greyList.firstWhere((element) => element.name == 'grey3').value;
    Color activeColor = FColor.blueList.firstWhere((element) => element.name == 'blue5').value;
    bool checked = (widget.check == "Yes") ? true : false;
    bool? actived = (widget.state == "Active") ? true : 
                    (widget.state == "Disabled") ? false : null;
    return 
      ( widget.label == "No" )
      ? Container(
        width: widget.size.toDouble(),
        height: widget.size.toDouble(),
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Checkbox(
          activeColor: actived! ? activeColor : disabledColor,
              side: actived ? MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 0.2, color: Colors.black),
              )
              : MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1, color: disabledColor),
              ),
          value: checked, 
          onChanged: (newValue){
            setState(() {
              checked = newValue!;
              widget.check = !checked ? "No" : "Yes";
            });
          }
        )
      )
      : ( widget.label == "Yes") 
      ? Container(
        height: widget.size.toDouble(),
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: 
        widget.labelPosition == "Right" ?
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              activeColor: actived! ? activeColor : disabledColor,
              side: actived ? MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 0.2, color: Colors.black),
              )
              : MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1, color: disabledColor),
              ),
              value: checked, 
              onChanged: (newValue){
                actived ? 
                setState(() {
                  checked = newValue!;
                  widget.check = !checked ? "No" : "Yes";
                }) : null;
              }
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: widget.size == 20 ? 12 : 16,
                color: actived ? Colors.black : disabledColor,
              ),
            )
          ],
        )
        : (widget.labelPosition == "Left") ?
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: widget.size == 20 ? 12 : 16,
                color: actived! ? Colors.black : disabledColor,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Checkbox(
              activeColor: actived ? activeColor : disabledColor,
              side: actived ? MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 0.2, color: Colors.black),
              )
              : MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1, color: disabledColor),
              ),
              value: checked, 
              onChanged: (newValue){
                actived ? 
                setState(() {
                  checked = newValue!;
                  widget.check = !checked ? "No" : "Yes";
                }) : null;
              }
            ),
          ],
        )
        : null
      )
      : Container();
  }
}