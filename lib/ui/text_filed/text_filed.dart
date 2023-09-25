import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/text_filed/F_size.dart';
import 'package:flutter/material.dart';

class TextFiledCustom extends StatelessWidget {
  TextFiledCustom({
    required this.List_Child,
    this.Size_TextField=56
});
  List_Child_TextField List_Child;
  int Size_TextField;
  @override
  Widget build(BuildContext context) {
    switch(List_Child){
      case List_Child_TextField.without_Label:
        //
        switch(Size_TextField){
          case 56:
            return Container(
              height: 64,
              width: 382,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: FColor.greyList[2].value)
              ),
              padding: EdgeInsets.only(right: 16,left: 16,top: 12,bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.search)),
                  suffixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.keyboard_arrow_down)),
                  labelText: 'Password',
                ),
              ),
            );
          case 56:
            return Container(
              height: 56,
              width: 382,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: FColor.greyList[2].value)
              ),
              padding: EdgeInsets.only(right: 16,left: 16,top: 12,bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.search)),
                  suffixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.keyboard_arrow_down)),
                  labelText: 'Password',
                ),
              ),
            );
          case 48:
            return Container(
              height: 48,
              width: 382,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: FColor.greyList[2].value)
              ),
              padding: EdgeInsets.only(right: 16,left: 16,top: 12,bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.search)),
                  suffixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.keyboard_arrow_down)),
                  labelText: 'Password',
                ),
              ),
            );
          case 40:
            return Container(
              height: 40,
              width: 382,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: FColor.greyList[2].value)
              ),
              padding: EdgeInsets.only(right: 16,left: 16,top: 12,bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.search)),
                  suffixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.keyboard_arrow_down)),
                  labelText: 'Password',
                ),
              ),
            );
          case 32:
            return Container(
              height: 32,
              width: 382,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1,color: FColor.greyList[2].value)
              ),
              padding: EdgeInsets.only(right: 16,left: 16,top: 12,bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.search)),
                  suffixIcon: Container(
                      height: 16,
                      width: 16,
                      child: Icon(Icons.keyboard_arrow_down)),
                  labelText: 'Password',
                ),
              ),
            );
        }
        return Container();
        //
      case List_Child_TextField.with_top_Label:
        return Container();
        //
      case List_Child_TextField.with_left_Label:
        return Container();
    }
  }
}
