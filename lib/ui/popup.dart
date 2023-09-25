import 'package:design_system/style/model/color.dart';
import 'package:design_system/ui/button.dart';
import 'package:design_system/ui/contenttext.dart';
import 'package:flutter/material.dart';
import 'package:design_system/style/model/enum.dart';



class PopUp extends StatelessWidget {

  final Device device;
  final Noti listChild;
  final MediaPosition mediaPosition;
  final ActionView actionView;
  final T subTitle;
  final T body;
  final String title;
  final String subTitleText;
  final String bodyText;

  PopUp({
    required this.device,
    required this.listChild,
    required this.mediaPosition,
    required this.actionView,
    required this.subTitle,
    required this.body,
    this.title = 'Content title',
    this.subTitleText = 'Sub title',
    this.bodyText = 'Body content',
  });

  @override
  Widget build(BuildContext context) {

  Color primary = FColor.blueList.firstWhere((element) => element.name == 'blue7').value;
  Color success = FColor.greenList.firstWhere((element) => element.name == 'green7').value;
  Color error = FColor.redList.firstWhere((element) => element.name == 'red7').value;
  Color warning = FColor.orangeList.firstWhere((element) => element.name == 'orange5').value;
  String type = listChild == Noti.info ? 'primary' 
  : listChild == Noti.warning ? 'warning' 
  : listChild == Noti.error ? 'error'
  : listChild == Noti.success ? 'success' : '';
  Color color = (type == "primary") ? primary :
    type == "success" ? success : type == "error" ? error : 
    type == "warning" ? warning : Colors.black;
  IconData icon = listChild == Noti.info ? Icons.info 
  : listChild == Noti.warning ? Icons.warning
  : listChild == Noti.error ? Icons.close
  : listChild == Noti.success ? Icons.check_circle_rounded : Icons.add;

    return device == Device.mobile
    ? Container(
      width: 382,
      padding: const EdgeInsets.only(
        top: 10
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          mediaPosition == MediaPosition.above 
          ? Container(
            width: 64,
            height: 64,
            child: Icon(icon,
            color: color,
            size: 64,
            ),
          )
          : Container(),
          FContentText(
            device: device, 
            contentAlign: ContentAlign.center, 
            subTitle: subTitle, 
            body: body,
            title: title,
            subTitleText: subTitleText,
            bodyText: bodyText
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              actionView == ActionView.horizontalButton ? Container(
                margin: const EdgeInsets.all(8),
                child: FButton(
                  title: 'Button', 
                  onPressed: () {  },
                ),
              ) : Container(),
              Container(
                margin: const EdgeInsets.all(8),
                child: FButton(
                  title: 'Button', 
                  type: type,
                  onPressed: () {  },
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    )
    : Container();
  }

}