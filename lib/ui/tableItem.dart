import 'package:design_system/style/model/enum.dart';
import 'package:design_system/ui/button/button.dart';
import 'package:flutter/material.dart';

enum ListChild { title, body }

class TableItem extends StatelessWidget {

    ListChild listChild;
    Device device;
    Alignment align;
    String text;

    TableItem({
      required this.listChild,
      required this.device,
      required this.align,
      this.text = 'Content',
    });

    @override
    Widget build(BuildContext context){
        return 
        device == Device.mobile 
        ? Container(
          padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 9,
                  bottom: 9
                ),
          child: Container(
            alignment: align,
            child: listChild == ListChild.title
            ? Button_CusTom(
                    List_child: 'Text action',
                    Position: 'Icon right',
                    Status: 'Primary',
                    Size: 32,
                    Content: text,
                    colorText: Colors.black,
                  )
            : Text(text,),
          ),
        )
        : Container();
    }
}