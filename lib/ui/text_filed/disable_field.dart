import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/text_filed/F_size.dart';
import 'package:flutter/material.dart';

Container Disable_Field(Input_AlignTextFeild Input_Align ,int Size_TextField, FocusNode _focusNode,bool _isFocused ) {
  switch(Input_Align){
    case Input_AlignTextFeild.Left:
      switch(Size_TextField){
        case 64:
          return Container(
            height: 64,
            width: 382,
            decoration: BoxDecoration(
              color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              children: [
                Container(width: 35,
                  child: Center(
                    child: Icon(Icons.search,size: 16),
                  ),
                ),
                Container(
                  height: 58,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    style: TextStyle(color: FColor.greyList[6].value),
                    readOnly: true,
                    // focusNode: _focusNode,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Label',
                      labelStyle: TextStyle(color: FColor.greyList[5].value),
                      contentPadding: EdgeInsets.only( top:10),

                    ),
                  ),
                ),
                Container(width: 35,
                  child: Icon(Icons.keyboard_arrow_down,size: 16),
                ),
              ],
            ),
          );
        case 56:
          return Container(
            height: 56,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              children: [
                Container(width: 35,
                  child: Center(
                    child: Icon(Icons.search,size: 16),
                  ),
                ),
                Container(
                  height: 56,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    style: TextStyle(color: FColor.greyList[6].value),
                    readOnly: true,
                    // focusNode: _focusNode,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Label',
                      labelStyle: TextStyle(color: FColor.greyList[5].value),
                      contentPadding: EdgeInsets.only( top:10),

                    ),
                  ),
                ),
                Container(width: 35,
                  child: Icon(Icons.keyboard_arrow_down,size: 16),
                ),
              ],
            ),
          );
        case 48:
          return Container(
            height: 48,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              children: [
                Container(width: 35,
                  child: Center(
                    child: Icon(Icons.search,size: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Container(
                    height: 36,
                    width: 310,
                    child: TextFormField(
                      initialValue: 'Input',
                      style: TextStyle(color: FColor.greyList[6].value),
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                    ),
                  ),
                ),
                Container(width: 35,
                  child: Icon(Icons.keyboard_arrow_down,size: 16),
                ),
              ],
            ),
          );
        case 40:
          return Container(
            height: 48,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              children: [
                Container(width: 35,
                  child: Center(
                    child: Icon(Icons.search,size: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Container(
                    height: 36,
                    width: 310,
                    child: TextFormField(
                      initialValue: 'Input',
                      style: TextStyle(color: FColor.greyList[6].value),
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                    ),
                  ),
                ),
                Container(width: 35,
                  child: Icon(Icons.keyboard_arrow_down,size: 16),
                ),
              ],
            ),
          );
        case 32:
          return Container(
            height: 32,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              children: [
                Container(width: 35,
                  child: Center(
                    child: Icon(Icons.search,size: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 24,
                    width: 310,
                    child: TextFormField(
                      initialValue: 'Input',
                      style: TextStyle(color: FColor.greyList[6].value),
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                    ),
                  ),
                ),
                Container(width: 35,
                  child: Icon(Icons.keyboard_arrow_down,size: 16),
                ),
              ],
            ),
          );
        default :
          return Container();
      }
    case Input_AlignTextFeild.Center:
      switch(Size_TextField){
        case 64:
          return Container(
            height: 64,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 53,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        label: Center(child: Text('label')),
                        contentPadding: EdgeInsets.only(top:0)
                    ),
                  ),
                ),
              ],
            ),
          );
        case 56:
          return Container(
            height: 56,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 310,
                  child: Stack(
                    alignment: Alignment.topCenter, // Đặt vị trí alignment ở trên cùng
                    children: [
                      TextFormField(
                        initialValue: 'Input',
                        readOnly: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            border: InputBorder.none,
                            label: Center(child: Text('label')),
                            contentPadding: EdgeInsets.only(top:0)
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          );
        case 48:
          return Container(
            height: 48,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 310,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    initialValue: 'Input',
                    readOnly: true,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ],
            ),
          );
        case 40:
          return Container(
            height: 40,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 36,
                  width: 310,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    initialValue: 'Input',
                    readOnly: true,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          );
        case 32:
          return Container(
            height: 32,
            width: 382,
            decoration: BoxDecoration(
                color: FColor.greyList[4].value,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1,color: FColor.greyList[2].value)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 310,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    initialValue: 'Input',
                    readOnly: true,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          );
        default :
          return Container();
      }
  }
}