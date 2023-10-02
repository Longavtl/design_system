import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:design_system/ui/text_filed/F_size.dart';
import 'package:design_system/ui/text_filed/active_field.dart';
import 'package:design_system/ui/text_filed/disable_field.dart';
import 'package:design_system/ui/text_filed/error_field.dart';
import 'package:design_system/ui/text_filed/typing_field.dart';
import 'package:flutter/material.dart';

class TextFiledCustom extends StatefulWidget {
  TextFiledCustom({
    required this.List_Child,
    required this.Input_Align,
    required this.Status,
    this.labelText='Label',
    this.Size_TextField=56,
    this.background=Colors.white,

});
  List_Child_TextField List_Child;
  int Size_TextField;
  String labelText ;
  Status_TextFeild Status;
  Input_AlignTextFeild Input_Align;
  Color background;
  @override
  State<TextFiledCustom> createState() => _TextFiledCustomState();
}
class _TextFiledCustomState extends State<TextFiledCustom> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Color isColor=FColor.greyList[2].value;
  bool isText= false;
  void _check(String value) {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      if(value=='Error'){
        setState(() {
          isColor=Colors.red;
          isText= true;
        });
      }
      else if(value== 'Success'){
        setState(() {
          isColor=Colors.green;
          isText= true;
        });
      }
      else if(value=='Focus'){
        setState(() {
          isColor=Colors.blue;
          isText= true;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.List_Child) {
      case List_Child_TextField.without_Label:
      //
        switch (widget.Status) {
          case Status_TextFeild.Default:
            {
              switch (widget.Input_Align) {
                case Input_AlignTextFeild.Left:
                  switch (widget.Size_TextField) {
                    case 64:
                      return Container(
                        height: 64,
                        width: 382,
                        decoration: BoxDecoration(
                          color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          children: [
                            Container(width: 35,
                              child: Center(
                                child: Icon(Icons.search, size: 16),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: _isFocused ? '' : widget.labelText,
                                  labelStyle: TextStyle(color: FColor.greyList[5].value)
                                ),
                              ),
                            ),
                            Container(width: 35,
                              child: Icon(Icons.keyboard_arrow_down, size: 16),
                            ),
                          ],
                        ),
                      );
                    case 56:
                      return Container(
                        height: 56,
                        width: 382,
                        decoration: BoxDecoration(
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          children: [
                            Container(width: 35,
                              child: Center(
                                child: Icon(Icons.search, size: 16),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: _isFocused ? '' : widget.labelText,
                                    labelStyle: TextStyle(color: FColor.greyList[5].value)
                                ),
                              ),
                            ),
                            Container(width: 35,
                              child: Icon(Icons.keyboard_arrow_down, size: 16),
                            ),
                          ],
                        ),
                      );
                    case 48:
                      return Container(
                        height: 48,
                        width: 382,
                        decoration: BoxDecoration(
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          children: [
                            Container(width: 35,
                              child: Center(
                                child: Icon(Icons.search, size: 16),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: _isFocused ? '' : widget.labelText,
                                    labelStyle: TextStyle(color: FColor.greyList[5].value)
                                ),
                              ),
                            ),
                            Container(width: 35,
                              child: Icon(Icons.keyboard_arrow_down, size: 16),
                            ),
                          ],
                        ),
                      );
                    case 40:
                      return Container(
                        height: 40,
                        width: 382,
                        decoration: BoxDecoration(
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          children: [
                            Container(width: 35,
                              child: Center(
                                child: Icon(Icons.search, size: 16),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 310,
                              child: TextFormField(
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: _isFocused ? '' : widget.labelText,
                                    labelStyle: TextStyle(color: FColor.greyList[5].value),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
                                ),
                              ),
                            ),
                            Container(width: 35,
                              child: Icon(Icons.keyboard_arrow_down, size: 16),
                            ),
                          ],
                        ),
                      );
                    case 32:
                      return Container(
                        height: 32,
                        width: 382,
                        decoration: BoxDecoration(
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          children: [
                            Container(width: 35,
                              child: Center(
                                child: Icon(Icons.search, size: 16),
                              ),
                            ),
                            Container(
                              height: 24,
                              width: 310,
                              child: TextFormField(
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: _isFocused ? '' : widget.labelText,
                                    labelStyle: TextStyle(color: FColor.greyList[5].value)

                                ),
                              ),
                            ),
                            Container(width: 35,
                              child: Icon(Icons.keyboard_arrow_down, size: 16),
                            ),
                          ],
                        ),
                      );
                  }
                case Input_AlignTextFeild.Center:
                  switch (widget.Size_TextField) {
                    case 64:
                      return Container(
                        height: 64,
                        width: 382,
                        decoration: BoxDecoration(
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    border: InputBorder.none,
                                    label: Center(child: Text(_isFocused
                                        ? ''
                                        : widget.labelText)),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
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
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    border: InputBorder.none,
                                    label: Center(child: Text(_isFocused
                                        ? ''
                                        : widget.labelText)),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
                                ),
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
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 310,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    border: InputBorder.none,
                                    label: Center(child: Text(_isFocused
                                        ? ''
                                        :widget.labelText)),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
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
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 310,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    border: InputBorder.none,
                                    label: Center(child: Text(_isFocused
                                        ? ''
                                        : widget.labelText)),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
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
                            color: widget.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: FColor.greyList[2].value)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 310,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                focusNode: _focusNode,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    border: InputBorder.none,
                                    label: Center(child: Text(_isFocused
                                        ? ''
                                        : widget.labelText)),
                                    floatingLabelAlignment: FloatingLabelAlignment
                                        .center
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                  }
              }
            }
          case Status_TextFeild.Active:
            return Active_Field(
                widget.Input_Align, widget.Size_TextField, _focusNode,
                _isFocused);
          case Status_TextFeild.Disable:
            return Disable_Field(
                widget.Input_Align, widget.Size_TextField, _focusNode,
                _isFocused);
          case Status_TextFeild.Typing:
            return Typing_Field(
                widget.Input_Align, widget.Size_TextField, _focusNode,
                _isFocused);
          case Status_TextFeild.Error_Success_Focus:
            switch (widget.Input_Align) {
              case Input_AlignTextFeild.Left:
                switch (widget.Size_TextField) {
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
                                    width: 1, color: isColor)),
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
                                      onFieldSubmitted: (value) =>
                                          _check(value),
                                      initialValue: 'Input',
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: widget.labelText,
                                        labelStyle:
                                        TextStyle(
                                            color: FColor.blueList[5].value),
                                        contentPadding: EdgeInsets.only(
                                            top: 10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: Icon(
                                      Icons.keyboard_arrow_down, size: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                          )
                        ],
                      ),
                    );
                  case 56:
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 56,
                            width: 382,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: isColor)),
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  child: Center(
                                    child: Icon(Icons.search, size: 16),
                                  ),
                                ),
                                Container(
                                  height: 56,
                                  width: 310,
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      onFieldSubmitted: (value) =>
                                          _check(value),
                                      initialValue: 'Input',
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: widget.labelText,
                                        labelStyle:
                                        TextStyle(
                                            color: FColor.blueList[5].value),
                                        contentPadding: EdgeInsets.only(
                                            top: 10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: Icon(
                                      Icons.keyboard_arrow_down, size: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                          )
                        ],
                      ),
                    );
                  case 48:
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 48,
                            width: 382,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: isColor)),
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  child: Center(
                                    child: Icon(Icons.search, size: 16),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 3),
                                  height: 40,
                                  width: 310,
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      onFieldSubmitted: (value) =>
                                          _check(value),
                                      initialValue: 'Input',
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: Icon(
                                      Icons.keyboard_arrow_down, size: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                          )
                        ],
                      ),
                    );
                  case 40:
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 40,
                            width: 382,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: isColor)),
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  child: Center(
                                    child: Icon(Icons.search, size: 16),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 3),
                                  height: 40,
                                  width: 310,
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      onFieldSubmitted: (value) =>
                                          _check(value),
                                      initialValue: 'Input',
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: Icon(
                                      Icons.keyboard_arrow_down, size: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                          )
                        ],
                      ),
                    );
                  case 32:
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 32,
                            width: 382,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: isColor)),
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  child: Center(
                                    child: Icon(Icons.search, size: 16),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 3),
                                  height: 24,
                                  width: 310,
                                  child: Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      onFieldSubmitted: (value) =>
                                          _check(value),
                                      initialValue: 'Input',
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: Icon(
                                      Icons.keyboard_arrow_down, size: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              width: double.infinity,
                              child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                          )
                        ],
                      ),
                    );
                  default :
                    return Container();
                }
              case Input_AlignTextFeild.Center:
                switch (widget.Size_TextField) {
                  case 64:
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 64,
                          width: 382,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1, color: isColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 53,
                                width: 310,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: 'Input',
                                    onFieldSubmitted: (value) =>
                                        _check(value),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        border: InputBorder.none,
                                        label: Center(child: Text(widget.labelText)),
                                        labelStyle: TextStyle(
                                            color: FColor.blueList[5].value),
                                        contentPadding: EdgeInsets.only(top: 0)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                        )
                      ],
                    );
                  case 56:
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:56,
                          width: 382,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1, color: isColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 310,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: 'Input',
                                    onFieldSubmitted: (value) =>
                                        _check(value),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        border: InputBorder.none,
                                        label: Center(child: Text(widget.labelText)),
                                        labelStyle: TextStyle(
                                            color: FColor.blueList[5].value),
                                        contentPadding: EdgeInsets.only(top: 0)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                        )
                      ],
                    );
                  case 48:
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 48,
                          width: 382,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1, color: isColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 2),
                                height: 38,
                                width: 310,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: 'Input',
                                    onFieldSubmitted: (value) =>
                                        _check(value),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                        )
                      ],
                    );
                  case 40:
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 40,
                          width: 382,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1, color: isColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 36,
                                width: 310,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: 'Input',
                                    onFieldSubmitted: (value) =>
                                        _check(value),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                        )
                      ],
                    );
                  case 32:
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 32,
                          width: 382,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1, color: isColor)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 24,
                                width: 310,
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: 'Input',
                                    onFieldSubmitted: (value) =>
                                        _check(value),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(isText?'Sub message line up to 2 line':'',style: TextStyle(color: isColor),)
                        )
                      ],
                    );
                  default :
                    return Container();
                }
            }
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