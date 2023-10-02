import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/text_filed/F_size.dart';
import 'package:flutter/material.dart';

Container Error_Field(Input_AlignTextFeild Input_Align ,int Size_TextField, FocusNode _focusNode,bool _isFocused ) {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _check(String value) {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      if (int.tryParse(value) != null) {
        print('Dữ liệu đã được lưu: $value');

      } else {
        print('Dữ liệu không phải là một số hợp lệ');
      }
    }
  }
  switch(Input_Align){
    case Input_AlignTextFeild.Left:
      switch(Size_TextField){
        case 64:
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 64,
                  width: 382,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: FColor.greyList[2].value)),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        child: Center(
                          child: Icon(Icons.search, size: 16),
                        ),
                      ),
                      Container(
                        height: 58,
                        width: 310,
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            onFieldSubmitted: (value) => _check(value),
                            initialValue: 'Input',
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Text',
                              labelStyle:
                                  TextStyle(color: FColor.blueList[5].value),
                              contentPadding: EdgeInsets.only(top: 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 35,
                        child: Icon(Icons.keyboard_arrow_down, size: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: double.infinity,
                    child: Text('data')
                )
              ],
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Text',
                      labelStyle: TextStyle(color: FColor.blueList[5].value),
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
                  height: 40,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    decoration: InputDecoration(
                      border: InputBorder.none,

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
                  height: 40,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    decoration: InputDecoration(
                      border: InputBorder.none,

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
            height: 48,
            width: 382,
            decoration: BoxDecoration(
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
                  height: 24,
                  width: 310,
                  child: TextFormField(
                    initialValue: 'Input',
                    decoration: InputDecoration(
                      border: InputBorder.none,

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

                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        label: Center(child: Text('label')),
                        labelStyle: TextStyle(color: FColor.blueList[5].value),
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
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            border: InputBorder.none,
                            label: Center(child: Text('label')),
                            labelStyle: TextStyle(color: FColor.blueList[5].value),
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