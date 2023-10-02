import 'package:design_system/ui/icons/icons.dart';
import 'package:design_system/ui/text_filed/FText_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 120,
          child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,colorBackground: Colors.white,height: 48,colorLabel: Colors.blue,colorBorder: Colors.blue,labelLeft: 'Label',bottomText: 'Sub tititle',isLabelleft: true),
        )
      ],
    );
  }
}
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,labelText: 'Label',colorBackground: Colors.white,height: 48,colorLabel: Colors.blue,colorBorder: Colors.blue,labelLeft: 'Label',bottomText: 'Sub tititle',isLabelleft: true),
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,labelText: 'Label',colorBackground: Colors.white,height: 48,colorLabel: Colors.blue,input:'input',colorBorder: Colors.blue,topLabel: 'Label',bottomText: 'Sub tititle',isCenter: true),
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,labelText: 'Label',colorBackground: Colors.white,height: 48,colorLabel: Colors.blue,colorBorder: Colors.blue,),
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,labelText: 'Label',colorBackground: Colors.white,height: 48,input: 'input',colorLabel: Colors.blue,colorBorder: Colors.blue,),
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,labelText: 'Label',colorBackground: Colors.white,height: 64,input: 'input',colorLabel: Colors.blue),
//child: FTextField(iconLeft: Icon_Custom(imgIcon: 'assets/icons/icons_button/search.png',),iconRight: Icon_Custom(imgIcon: 'assets/icons/icons_button/delete.png',),hideLabel: true,bottomText: 'Sub message line up to 2 line',colorBorder:Colors.red,width: 382,isLabelleft: true,labelLeft: 'Label',labelText: '',input: 'input',),