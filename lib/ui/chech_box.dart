import 'package:flutter/material.dart';

class Check_Box_Custom extends StatefulWidget {
  bool value;
  bool isLocked ;
  bool isChecked;
  Color isColor=Colors.blue;
  Check_Box_Custom(
  {
    this.value=true,
    this.isChecked=true,
    required this.isLocked,
  });
  @override
  State<Check_Box_Custom> createState() => _Check_Box_CustomState();
}
class _Check_Box_CustomState extends State<Check_Box_Custom> {
  @override
  Widget build(BuildContext context) {
      return Row(
        children:[
          Checkbox(
          activeColor: widget.isLocked?Colors.black38:widget.isColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Làm tròn góc
            side: BorderSide(
              color: Colors.black, // Màu sắc của đường viền
              width: 4.0, // Độ rộng của đường viền
            ),
          ),
          value: this.widget.value,
          onChanged: (value) {
          if (widget.isLocked==false) { // Nếu isLocked là false, cho phép thay đổi giá trị
            setState(() {
              this.widget.value = value!;
              this.widget.isChecked=value!;
            });
          }

        },
    ),
          widget.isChecked==true?Text('Checked'):Text('Un Check'),
        ]
      );
  }
}
// Check_Box_Custom(
// isLocked: true,
// value: true,
// ),