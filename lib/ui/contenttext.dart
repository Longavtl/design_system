import 'package:design_system/style/list_style/title_style.dart';
import 'package:design_system/style/model/enum.dart';
import 'package:design_system/style/model/style.dart';
import 'package:design_system/style/model/text_style.dart';
import 'package:flutter/material.dart';

class FContentText extends StatelessWidget {

  final Device device;
  final ContentAlign contentAlign;
  final T subTitle;
  final T body;
  final String title;
  final String subTitleText;
  final String bodyText;

  FContentText({
    required this.device,
    required this.contentAlign,
    required this.subTitle,
    required this.body,
    this.title = 'Content title',
    this.subTitleText = 'Sub title',
    this.bodyText = 'Body content',
  });


  @override
  Widget build(BuildContext context) {
    
    CrossAxisAlignment crossAxisAlignment = contentAlign == ContentAlign.center ? CrossAxisAlignment.center
    : contentAlign == ContentAlign.left ? CrossAxisAlignment.start : CrossAxisAlignment.end;

    return device == Device.mobile 
    ? Container(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 4,
              bottom: 4
            ),
            child: Text(title, style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
              textAlign: TextAlign.center,
            ),
          ),
          subTitle == T.yes 
          ? Container(
            padding: const EdgeInsets.only(
              top: 4,
              bottom: 4
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                const SizedBox(height: 4),
                Text(subTitleText, style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                ) ,
              ],
            ),
          ) : const SizedBox(),
          body == T.yes 
          ? Container(
            padding: const EdgeInsets.only(
              top: 4,
              bottom: 4
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 4,),
                Text(bodyText, style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  
                ),
                textAlign: TextAlign.center,
                ) ,
              ],
            ),
          ) : const SizedBox(),
          
        ],
      )
    )
    : Container();
  }

}