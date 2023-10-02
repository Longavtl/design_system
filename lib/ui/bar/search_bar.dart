import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/bar/F_tab_bar.dart';
import 'package:design_system/ui/text_filed/F_size.dart';
import 'package:design_system/ui/text_filed/text_filed.dart';
import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  SearchBarCustom({
  required this.action,
  required this.filter
}) ;
  With_Action action;
  With_Filter filter;

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  final FocusNode _focusNode = FocusNode();

  bool _isFocused = false;

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
    switch(widget.action) {
      case With_Action.No:
        switch(widget.filter){
          case With_Filter.No:
            return TextFiledCustom(List_Child: List_Child_TextField.without_Label,Size_TextField: 32,Input_Align:Input_AlignTextFeild.Left,Status: Status_TextFeild.Default,labelText: 'Search',background: FColor.greyList[2].value,);
          case With_Filter.Yes:
            return Row(
              children: [
                Container(
                  height: 32,
                  width: 202,
                  decoration: BoxDecoration(
                      color: FColor.greyList[2].value,
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
                        width: 130,
                        child: TextFormField(
                          focusNode: _focusNode,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: _isFocused ? '' : 'Search',
                              labelStyle: TextStyle(color: FColor.greyList[5].value)

                          ),
                        ),
                      ),
                      Container(width: 35,
                        child: Icon(Icons.keyboard_arrow_down, size: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6,),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    width: 88,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: FColor.greyList[5].value,width: 0.5)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sort by',style: TextStyle(color: FColor.greyList[5].value)),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_down, size: 16,color: FColor.greyList[5].value),
                      ],
                    )
                  ),
                ),
                SizedBox(width: 5,),
                InkWell(
                  onTap: () => {},
                  child: Container(
                      width: 76,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: FColor.greyList[5].value,width: 0.5)
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Filter',style: TextStyle(color: FColor.greyList[5].value)),
                          SizedBox(width: 5,),
                          Icon(Icons.add_business_sharp, size: 16,color: FColor.greyList[5].value),
                        ],
                      )
                  ),
                )
              ],
            );
        }
      case With_Action.Yes:
        switch(widget.filter){
          case With_Filter.No:
            return Row(
              children: [
                Container(
                  height: 32,
                  width: 323,
                  decoration: BoxDecoration(
                      color: FColor.greyList[2].value,
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
                        width: 251,
                        child: TextFormField(
                          focusNode: _focusNode,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: _isFocused ? '' : 'Search',
                              labelStyle: TextStyle(color: FColor.greyList[5].value)

                          ),
                        ),
                      ),
                      Container(width: 35,
                        child: Icon(Icons.keyboard_arrow_down, size: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    width: 43,
                    height: 22,
                    child: Text(
                      'Cancel',style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            );
          case With_Filter.Yes:
            return Container();
        }
    }
  }
}
