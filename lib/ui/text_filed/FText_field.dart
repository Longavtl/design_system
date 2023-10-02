import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/icons/icons.dart';
import 'package:flutter/material.dart';

class FTextField extends StatefulWidget {
  FTextField({
    this.height=48,
    this.width=382,
    this.colorBackground=Colors.black,
    this.iconLeft,
    this.isLeft=true,
    this.iconRight,
    this.isRight=true,
    this.labelText='',
    this.input='',
    this.hideLabel=false,
    this.isCenter=false,
    this.colorLabel =Colors.grey,
    this.colorBorder=Colors.grey,
    this.topLabel='',
    this.bottomText='',
    this.isLabelleft=false,
    this.widthLabelleft=207,
    this.labelLeft=''
});
  String labelLeft;
  double widthLabelleft;
  bool isLabelleft;
  String bottomText;
  String topLabel;
  Color colorBorder;
  Color colorLabel;
  bool isCenter;
  String input;
  String labelText;
  Color colorBackground;
  double height;
  double width;
  Icon_Custom ?iconLeft;
  bool isLeft;
  Icon_Custom ?iconRight;
  bool isRight;
  bool hideLabel;
  @override
  State<FTextField> createState() => _FTextFieldState();
}
class _FTextFieldState extends State<FTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Color isColor = FColor.greyList[2].value;
  bool isText = false;
  @override
  void initState() {
    super.initState();
    if(widget.hideLabel==true){
      _focusNode.addListener(() {
        setState(() {
          _isFocused = _focusNode.hasFocus;
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(width: 10,),
            Text(widget.topLabel,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.isLabelleft?Container(
              width: widget.widthLabelleft,
              height: widget.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(widget.labelLeft,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  Container(width: 32,)
                ],
              ),
            )
                :Container(width: 0,),
            Container(
              height: widget.height,
              width: widget.isLabelleft?widget.width-widget.widthLabelleft:widget.width,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: widget.height == 64
                    ? 12
                    : (widget.height == 56
                    ? 8
                    : (widget.height == 48
                    ? 4
                    : (widget.height == 40 ? 0
                    : (widget.height == 32 ? 4 : 0)))),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: widget.colorBorder),
                color: widget.colorBackground
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    widget.isLeft
                        ? Container(
                      height: 16,
                      width: 16,
                      child: widget.iconLeft,
                    )
                        : Container(),
                    widget.isLeft ? SizedBox(width: 8) : Container(),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Form(
                          key: _formKey,
                          child: Stack(
                            alignment: Alignment.centerLeft, // Đặt label vào giữa
                            children: [
                              TextFormField(
                                textAlign: widget.isCenter?TextAlign.center:TextAlign.start,
                                focusNode: _focusNode,
                                initialValue: widget.input,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: widget.height == 64 ? (widget.isLabelleft?-9:9) : (widget.height == 56 ?(widget.isLabelleft?-9:9) : widget.height==48?(widget.isLabelleft?-8:-8):(widget.height==40)?-6:(widget.height==32)?-20:0))
                                ),
                              ),
                              if ((_isFocused || widget.input.isNotEmpty) &&
                                  (widget.height != 56 && widget.height != 64&&widget.isLabelleft==false))// 64 hoặc 56 thì hiện label và hidelabel
                                SizedBox.shrink()
                              else
                                Transform.translate(
                                  offset: Offset(
                                    0.0,
                                    widget.height == 64
                                        ? (widget.isLabelleft ? 0 : -12)
                                        : widget.height == 56
                                        ? (widget.isLabelleft ? -0 : -8)
                                        : 0,
                                  ),
                                  child: Container(

                                    child: Align(
                                      alignment: widget.isCenter?Alignment.center:Alignment.centerLeft,
                                      child: Text(
                                        widget.labelText,
                                        style: TextStyle(
                                          color: widget.colorLabel,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    widget.isRight
                        ? Container(
                      height: 16,
                      width: 16,
                      child: widget.iconRight,
                    )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8,),
        Padding(
          padding: EdgeInsets.only(left: widget.isLabelleft?widget.widthLabelleft:0),
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text(widget.bottomText,style: TextStyle(color: widget.colorBorder,fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}