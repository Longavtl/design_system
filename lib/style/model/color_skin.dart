import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class ColorSkinItem {
  final String name;
  final Color primaryColor;
  final Color hoverColor;
  final Color activeColor;
  final Color backgroundColor;
  final Color borderColor;

  ColorSkinItem(this.name, this.primaryColor, this.hoverColor, this.activeColor, this.backgroundColor, this.borderColor,);
}
class FColorSkin {
  static Map<String, ColorItem> primary = Map.fromIterable(FColor.blueList,key: (e) => e.name);
  static Map<String, ColorItem> secondary1 = Map.fromIterable(FColor.greenList,key: (e) => e.name);
  static Map<String, ColorItem> secondary2 = Map.fromIterable(FColor.cyanList,key: (e) => e.name);
  static Map<String, ColorItem> secondary3 = Map.fromIterable(FColor.orangeList,key: (e) => e.name);
  static Map<String, ColorItem> secondary4 = Map.fromIterable(FColor.yellowList,key: (e) => e.name);
  
  static Map<String, ColorItem> alertsuccess = Map.fromIterable(FColor.greenList,key: (e) => e.name);
  static Map<String, ColorItem> alertwarning= Map.fromIterable(FColor.orangeList,key: (e) => e.name);
  static Map<String, ColorItem> alerterror= Map.fromIterable(FColor.redList,key: (e) => e.name);

  static List<ColorSkinItem> colorSkinList = [
    ColorSkinItem(
      "primary", 
      primary['blue6']!.value, 
      primary['blue5']!.value, 
      primary['blue7']!.value, 
      primary['blue1']!.value,
      primary['blue3']!.value
      ),
    ColorSkinItem(
      "secondary1", 
      secondary1['green6']!.value, 
      secondary1['green5']!.value, 
      secondary1['green7']!.value, 
      secondary1['green1']!.value,
      secondary1['green3']!.value
      ),
    ColorSkinItem(
      "secondary2", 
      secondary2['cyan6']!.value, 
      secondary2['cyan5']!.value, 
      secondary2['cyan7']!.value, 
      secondary2['cyan1']!.value,
      secondary2['cyan3']!.value
      ),
    ColorSkinItem(
      "secondary3", 
      secondary3['orange6']!.value, 
      secondary3['orange5']!.value, 
      secondary3['orange7']!.value, 
      secondary3['orange1']!.value,
      secondary3['orange3']!.value
      ),
    ColorSkinItem(
      "secondary4", 
      secondary4['yellow6']!.value, 
      secondary4['yellow5']!.value, 
      secondary4['yellow7']!.value, 
      secondary4['yellow1']!.value,
      secondary4['yellow3']!.value
      ),
    ColorSkinItem(
      "alertsuccess", 
      alertsuccess['green6']!.value, 
      alertsuccess['green5']!.value, 
      alertsuccess['green7']!.value, 
      alertsuccess['green1']!.value,
      alertsuccess['green3']!.value
      ),
    ColorSkinItem(
      "alertwarning", 
      alertwarning['orange6']!.value, 
      alertwarning['orange5']!.value, 
      alertwarning['orange7']!.value, 
      alertwarning['orange1']!.value,
      alertwarning['orange3']!.value
      ),
    ColorSkinItem(
      "alerterror", 
      alertwarning['red6']!.value, 
      alertwarning['red5']!.value, 
      alertwarning['red7']!.value, 
      alertwarning['red1']!.value,
      alertwarning['red3']!.value
      ),
  ];
}