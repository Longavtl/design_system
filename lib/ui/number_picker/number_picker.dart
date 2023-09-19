import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class Number_Picker extends StatefulWidget {
  Number_Picker(
  {
    required this.List_child,
    required this.Size
}) ;
  String List_child;
  int Size;
  @override
  State<Number_Picker> createState() => _Number_PickerState();
}

class _Number_PickerState extends State<Number_Picker> {
  List<Size_Number_Picker> sizeNumberPickers = [
    Size_Number_Picker('Solid', 48,48,106),
    Size_Number_Picker('Solid', 40,40,106),
    Size_Number_Picker('Solid', 32,32,106),
    Size_Number_Picker('Solid', 24,24,106),
    Size_Number_Picker('Ghost', 48,48,106),
    Size_Number_Picker('Ghost', 40,40,106),
    Size_Number_Picker('Ghost', 32,32,106),
    Size_Number_Picker('Ghost', 24,24,106),
    Size_Number_Picker('Text_action', 24,24,90)
  ];
  int Value=1;
  @override
  Widget build(BuildContext context) {
    final selectedSize = sizeNumberPickers.firstWhere(
          (picker) =>
      picker.List_child == widget.List_child && picker.Size == widget.Size,
      orElse: () => Size_Number_Picker('Solid', 24, 24, 90), // Giá trị mặc định nếu không tìm thấy
    );
    if(widget.List_child=='Text action')
      {
        return Container(
          width: selectedSize.width.toDouble(),
          height: selectedSize.height.toDouble(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: FColor.greyList[2].value
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(Value>=1)
                      {
                        Value--;
                      }
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    color: widget.List_child=='Solid'?Colors.white:
                    widget.List_child=='Ghost'?FColor.greyList[8].value:
                    widget.List_child=='Text action'?FColor.greyList[8].value:FColor.greyList[8].value,
                  ),
                ),
              ),
              Text(Value.toString(),style: TextStyle(
                  fontSize: 20,
                  color: widget.List_child=='Solid'?Colors.white:
                  widget.List_child=='Ghost'?Colors.black:
                  widget.List_child=='Text action'?Colors.black:Colors.black
              )
              ),
              Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: FColor.greyList[2].value),
                child: InkWell(
                  onTap: () => setState(() {
                    Value++;
                  }),
                  child: Icon(
                    Icons.add,
                    color: widget.List_child=='Solid'?Colors.white:
                    widget.List_child=='Ghost'?Colors.black:
                    widget.List_child=='Text action'?Colors.black:Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    else{
      return Container(
        width: selectedSize.width.toDouble(),
        height: selectedSize.height.toDouble(),
        decoration: Number_decoratin(widget.List_child),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  setState(() {
                    if(Value>=1)
                    {
                      Value--;
                    }
                  });
                },
                child: Icon(
                  Icons.remove,
                  color: widget.List_child=='Solid'?Colors.white:
                  widget.List_child=='Ghost'?FColor.greyList[8].value:
                  widget.List_child=='Text action'?FColor.greyList[8].value:FColor.greyList[8].value,
                ),
              ),
            ),
            Text(Value.toString(),style: TextStyle(
                fontSize: 20,
                color: widget.List_child=='Solid'?Colors.white:
                widget.List_child=='Ghost'?Colors.black:
                widget.List_child=='Text action'?Colors.black:Colors.black
            )
            ),
            InkWell(
              onTap: () => setState(() {
                Value++;
              }),
              child: Icon(
                Icons.add,
                color: widget.List_child=='Solid'?Colors.white:
                widget.List_child=='Ghost'?Colors.black:
                widget.List_child=='Text action'?Colors.black:Colors.black,
              ),
            ),
          ],
        ),
      );
    }
  }

  BoxDecoration Number_decoratin(String List_child) {
    switch(List_child){
      case 'Solid':
        return BoxDecoration(
          // border: Border.all(
          //   color: Colors.black
          // ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue
        );
      case 'Ghost':
        return BoxDecoration(
          border: Border.all(
            color: FColor.greyList[2].value
          ),
            borderRadius: BorderRadius.circular(8),
        );
    }
    return BoxDecoration();
  }
}
class Size_Number_Picker {
  String List_child;
  int Size;
  int height;
  int width;
  Size_Number_Picker(this.List_child, this.Size,this.height,this.width);
}
//đã fixx