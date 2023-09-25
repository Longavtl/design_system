import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/button.dart';
import 'package:design_system/ui/contenttext.dart';
import 'package:design_system/ui/pagination.dart';
import 'package:flutter/material.dart';

class FToolbar extends StatelessWidget {

  final int listChild;

  FToolbar({
    required this.listChild
  });

  @override
  Widget build(BuildContext context){
    return listChild == 1
    ? Container(
      height: 60,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FContentText(
            device: Device.mobile,
            contentAlign: ContentAlign.left,
            subTitle: T.no,
            body: T.no,
            title: '1-10 tren tong 1000'
          ),
          Pagination(
            listChild: Type.basic, 
            textField: K.no, 
            withLabel: K.no,
          ),
          Slider(value: 1, onChanged: (value){})
        ],
      ),
    )
    : listChild == 2 
    ? Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: FButton(
                title: 'Button', 
                onPressed: () {  },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: FButton(
                title: 'Button', 
                type: 'primary',
                onPressed: () {  },
            ),
          )
        ],
      ),
    )
    : listChild == 3 
    ? Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: FButton(
                title: 'Button', 
                onPressed: () {  },
            ),
          ),
          Pagination(
            listChild: Type.basic, 
            textField: K.no, 
            withLabel: K.no,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: FButton(
                title: 'Button', 
                type: 'primary',
                onPressed: () {  },
            ),
          )
        ],
      ),
    )
    : Container();
  }
}