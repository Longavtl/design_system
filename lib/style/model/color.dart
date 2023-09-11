import 'package:flutter/material.dart';

class ColorItem {
  final String name;
  final Color value;
  ColorItem(
     this.name, 
     this.value
  );
}

class GradientItem {
  final String name;
  final List<Color> values;
  GradientItem(
    this.name, 
    this.values,
  );
}

class FColor {
  //* blue
  static List<ColorItem> blueList = [
    ColorItem("blue1",const Color.fromRGBO(230, 247, 255, 1)),
    ColorItem("blue2",const Color.fromRGBO(186, 231, 255, 1)),
    ColorItem("blue3",const Color.fromRGBO(145, 213, 255, 1)),
    ColorItem("blue4",const Color.fromRGBO(105, 192, 255, 1)),
    ColorItem("blue5",const Color.fromRGBO(64, 169, 255, 1)),
    ColorItem("blue6",const Color.fromRGBO(24, 144, 255, 1)),
    ColorItem("blue7",const Color.fromRGBO(9, 109, 217, 1)),
    ColorItem("blue8",const Color.fromRGBO(0, 80, 179, 1)),
    ColorItem("blue9",const Color.fromRGBO(0, 58, 140, 1)),
    ColorItem("blue10",const Color.fromRGBO(0, 39, 102, 1)),
    ];
  //* grey
  static List<ColorItem> greyList = [
    ColorItem("grey1", const Color.fromRGBO(255, 255, 255, 1) ),
    ColorItem("grey2", const Color.fromRGBO(250, 250, 250, 1) ),
    ColorItem("grey3", const Color.fromRGBO(243, 243, 243, 1) ),
    ColorItem("grey4", const Color.fromRGBO(232, 232, 232, 1) ),
    ColorItem("grey5", const Color.fromRGBO(217, 217, 217, 1) ),
    ColorItem("grey6", const Color.fromRGBO(191, 191, 191, 1) ),
    ColorItem("grey7", const Color.fromRGBO(140, 140, 140, 1) ),
    ColorItem("grey8", const Color.fromRGBO(89, 89, 89, 1) ),
    ColorItem("grey9", const Color.fromRGBO(38, 38, 38, 1) ),
    ColorItem("grey10", const Color.fromRGBO(0, 0, 0, 1) ),
  ];
  //* red
  static List<ColorItem> redList = [
    ColorItem("red1", const Color.fromRGBO(255, 241, 240, 1) ),
    ColorItem("red2", const Color.fromRGBO(255, 204, 199, 1) ),
    ColorItem("red3", const Color.fromRGBO(255, 163, 158, 1) ),
    ColorItem("red4", const Color.fromRGBO(255, 120, 117, 1) ),
    ColorItem("red5", const Color.fromRGBO(255, 77, 79, 1) ),
    ColorItem("red6", const Color.fromRGBO(245, 34, 45, 1) ),
    ColorItem("red7", const Color.fromRGBO(207, 19, 34, 1) ),
    ColorItem("red8", const Color.fromRGBO(168, 7, 26, 1) ),
    ColorItem("red9", const Color.fromRGBO(130, 0, 20, 1) ),
    ColorItem("red10", const Color.fromRGBO(92, 0, 17, 1) ),
  ];
  
  //* volcano

  static List<ColorItem> volcanoList = [
    ColorItem("volcano1", const Color.fromRGBO(255, 242, 232, 1) ),
    ColorItem("volcano2", const Color.fromRGBO(255, 216, 191, 1) ),
    ColorItem("volcano3", const Color.fromRGBO(255, 187, 150, 1) ),
    ColorItem("volcano4", const Color.fromRGBO(255, 156, 110, 1) ),
    ColorItem("volcano5", const Color.fromRGBO(255, 122, 69, 1) ),
    ColorItem("volcano6", const Color.fromRGBO(250, 84, 28, 1) ),
    ColorItem("volcano7", const Color.fromRGBO(212, 56, 13, 1) ),
    ColorItem("volcano8", const Color.fromRGBO(173, 33, 2, 1) ),
    ColorItem("volcano9", const Color.fromRGBO(135, 20, 0, 1) ),
    ColorItem("volcano10", const Color.fromRGBO(97, 11, 0, 1) ),
  ];

  //* orange
  static List<ColorItem> orangeList = [
    ColorItem("orange1", const Color.fromRGBO(255, 247, 230, 1) ),
    ColorItem("orange2", const Color.fromRGBO(255, 231, 186, 1) ),
    ColorItem("orange3", const Color.fromRGBO(255, 213, 145, 1) ),
    ColorItem("orange4", const Color.fromRGBO(255, 192, 105, 1) ),
    ColorItem("orange5", const Color.fromRGBO(255, 169, 64, 1) ),
    ColorItem("orange6", const Color.fromRGBO(250, 140, 22, 1) ),
    ColorItem("orange7", const Color.fromRGBO(212, 107, 8, 1) ),
    ColorItem("orange8", const Color.fromRGBO(173, 78, 0, 1) ),
    ColorItem("orange9", const Color.fromRGBO(135, 56, 0, 1) ),
    ColorItem("orange10", const Color.fromRGBO(97, 37, 0, 1) ),
  ];
  //* gold
  static List<ColorItem> goldList = [
    ColorItem("gold1", const Color.fromRGBO(255, 247, 230, 1) ),
    ColorItem("gold2", const Color.fromRGBO(255, 231, 186, 1) ),
    ColorItem("gold3", const Color.fromRGBO(255, 213, 145, 1) ),
    ColorItem("gold4", const Color.fromRGBO(255, 192, 105, 1) ),
    ColorItem("gold5", const Color.fromRGBO(255, 169, 64, 1) ),
    ColorItem("gold6", const Color.fromRGBO(250, 140, 22, 1) ),
    ColorItem("gold7", const Color.fromRGBO(212, 107, 8, 1) ),
    ColorItem("gold8", const Color.fromRGBO(173, 78, 0, 1) ),
    ColorItem("gold9", const Color.fromRGBO(135, 56, 0, 1) ),
    ColorItem("gold10", const Color.fromRGBO(97, 37, 0, 1) ),
  ];
  //* yellow
  static List<ColorItem> yellowList = [
    ColorItem("yellow1", const Color.fromRGBO(254, 255, 230, 1)),
    ColorItem("yellow2", const Color.fromRGBO(255, 255, 184, 1)),
    ColorItem("yellow3", const Color.fromRGBO(255, 251, 143, 1)),
    ColorItem("yellow4", const Color.fromRGBO(255, 245, 102, 1)),
    ColorItem("yellow5", const Color.fromRGBO(255, 236, 61, 1)),
    ColorItem("yellow6", const Color.fromRGBO(250, 219, 20, 1)),
    ColorItem("yellow7", const Color.fromRGBO(212, 177, 6, 1)),
    ColorItem("yellow8", const Color.fromRGBO(173, 139, 0, 1)),
    ColorItem("yellow9", const Color.fromRGBO(135, 104, 0, 1)),
    ColorItem("yellow10", const Color.fromRGBO(97, 71, 0, 1)),
  ];
  //* lime
  static List<ColorItem> limeList = [
    ColorItem("lime1", const Color.fromRGBO(247, 250, 239, 1)),
    ColorItem("lime2", const Color.fromRGBO(235, 244, 223, 1)),
    ColorItem("lime3", const Color.fromRGBO(218, 235, 193, 1)),
    ColorItem("lime4", const Color.fromRGBO(196, 223, 156, 1)),
    ColorItem("lime5", const Color.fromRGBO(174, 201, 134, 1)),
    ColorItem("lime6", const Color.fromRGBO(114, 149, 95, 1)),
    ColorItem("lime7", const Color.fromRGBO(87, 119, 70, 1)),
    ColorItem("lime8", const Color.fromRGBO(60, 94, 61, 1)),
    ColorItem("lime9", const Color.fromRGBO(43, 67, 51, 1)),
    ColorItem("lime10", const Color.fromRGBO(5, 38, 11, 1)),
  ];

  //* green
  static List<ColorItem> greenList = [
    ColorItem("green1", const Color.fromRGBO(227, 242, 231, 1)),
    ColorItem("green2", const Color.fromRGBO(217, 245, 226, 1)),
    ColorItem("green3", const Color.fromRGBO(179, 235, 197, 1)),
    ColorItem("green4", const Color.fromRGBO(196, 223, 156, 1)),
    ColorItem("green5", const Color.fromRGBO(140, 225, 167, 1)),
    ColorItem("green6", const Color.fromRGBO(46, 181, 83, 1)),
    ColorItem("green7", const Color.fromRGBO(3, 151, 50, 1)),
    ColorItem("green8", const Color.fromRGBO(2, 107, 35, 1)),
    ColorItem("green9", const Color.fromRGBO(1, 86, 28, 1)),
    ColorItem("green10", const Color.fromRGBO(9, 43, 0, 1)),
  ];

  //* cyan
  static List<ColorItem> cyanList = [
    ColorItem("cyan1", const Color.fromRGBO(231, 249, 249, 1)),
    ColorItem("cyan2", const Color.fromRGBO(181, 245, 236, 1)),
    ColorItem("cyan3", const Color.fromRGBO(135, 232, 222, 1)),
    ColorItem("cyan4", const Color.fromRGBO(92, 219, 211, 1)),
    ColorItem("cyan5", const Color.fromRGBO(54, 207, 201, 1)),
    ColorItem("cyan6", const Color.fromRGBO(19, 194, 194, 1)),
    ColorItem("cyan7", const Color.fromRGBO(8, 151, 156, 1)),
    ColorItem("cyan8", const Color.fromRGBO(0, 109, 117, 1)),
    ColorItem("cyan9", const Color.fromRGBO(0, 71, 79, 1)),
    ColorItem("cyan10", const Color.fromRGBO(0, 35, 41, 1)),
  ];

  //* geekblue
  static List<ColorItem> geekblueList = [
    ColorItem("geekblue1", const Color.fromRGBO(240, 245, 255, 1)),
    ColorItem("geekblue2", const Color.fromRGBO(214, 228, 255, 1)),
    ColorItem("geekblue3", const Color.fromRGBO(173, 198, 255, 1)),
    ColorItem("geekblue4", const Color.fromRGBO(133, 165, 255, 1)),
    ColorItem("geekblue5", const Color.fromRGBO(89, 126, 247, 1)),
    ColorItem("geekblue6", const Color.fromRGBO(47, 84, 235, 1)),
    ColorItem("geekblue7", const Color.fromRGBO(29, 57, 196, 1)),
    ColorItem("geekblue8", const Color.fromRGBO(29, 57, 196, 1)),
    ColorItem("geekblue9", const Color.fromRGBO(6, 17, 120, 1)),
    ColorItem("geekblue10", const Color.fromRGBO(3, 8, 82, 1)),
  ];

  //* purple
  static List<ColorItem> purpleList = [
    ColorItem("purple1", const Color.fromRGBO(249, 240, 255, 1)),
    ColorItem("purple2", const Color.fromRGBO(239, 219, 255, 1)),
    ColorItem("purple3", const Color.fromRGBO(211, 173, 247, 1)),
    ColorItem("purple4", const Color.fromRGBO(179, 127, 235, 1)),
    ColorItem("purple5", const Color.fromRGBO(146, 84, 222, 1)),
    ColorItem("purple6", const Color.fromRGBO(114, 46, 209, 1)),
    ColorItem("purple7", const Color.fromRGBO(83, 29, 171, 1)),
    ColorItem("purple8", const Color.fromRGBO(57, 16, 133, 1)),
    ColorItem("purple9", const Color.fromRGBO(34, 7, 94, 1)),
    ColorItem("purple10", const Color.fromRGBO(18, 3, 56, 1)),
  ];

  //* magenta
  static List<ColorItem> magentaList = [
    ColorItem("magenta1", const Color.fromRGBO(255, 240, 246, 1)),
    ColorItem("magenta2", const Color.fromRGBO(255, 214, 231, 1)),
    ColorItem("magenta3", const Color.fromRGBO(255, 173, 210, 1)),
    ColorItem("magenta4", const Color.fromRGBO(255, 133, 192, 1)),
    ColorItem("magenta5", const Color.fromRGBO(247, 89, 171, 1)),
    ColorItem("magenta6", const Color.fromRGBO(235, 47, 150, 1)),
    ColorItem("magenta7", const Color.fromRGBO(196, 29, 127, 1)),
    ColorItem("magenta8", const Color.fromRGBO(158, 16, 104, 1)),
    ColorItem("magenta9", const Color.fromRGBO(120, 6, 80, 1)),
    ColorItem("magenta10", const Color.fromRGBO(82, 3, 57, 1)),
  ];

  //* olive
  static List<ColorItem> oliveList = [
    ColorItem("olive1", const Color.fromRGBO(242, 246, 213, 1)),
    ColorItem("olive2", const Color.fromRGBO(236, 241, 183, 1)),
    ColorItem("olive3", const Color.fromRGBO(227, 233, 135, 1)),
    ColorItem("olive4", const Color.fromRGBO(214, 213, 121, 1)),
    ColorItem("olive5", const Color.fromRGBO(190, 186, 86, 1)),
    ColorItem("olive6", const Color.fromRGBO(161, 155, 69, 1)),
    ColorItem("olive7", const Color.fromRGBO(125, 120, 54, 1)),
    ColorItem("olive8", const Color.fromRGBO(94, 92, 41, 1)),
    ColorItem("olive9", const Color.fromRGBO(60, 61, 27, 1)),
    ColorItem("olive10", const Color.fromRGBO(38, 43, 20, 1)),
  ];

  //* gradient
  static List<Color> magenta = [
    const Color.fromRGBO(247, 89, 171, 1),
    const Color.fromRGBO(255, 133, 192, 1)
  ];
  static List<Color> purple = [
    const Color.fromRGBO(146, 84, 222, 1),
    const Color.fromRGBO(179, 127, 235, 1)
  ];
  static List<Color> geekblue = [
    const Color.fromRGBO(89, 126, 247, 1),
    const Color.fromRGBO(133, 165, 255, 1)
  ];
  static List<Color> cyan = [
    const Color.fromRGBO(54, 207, 201, 1),
    const Color.fromRGBO(135, 232, 222, 1)
  ];
  static List<Color> green = [
    const Color.fromRGBO(77, 208, 119, 1),
    const Color.fromRGBO(140, 225, 167, 1)
  ];
  static List<Color> lime = [
    const Color.fromRGBO(186, 230, 55, 1),
    const Color.fromRGBO(211, 242, 97, 1)
  ];
  static List<Color> gold = [
    const Color.fromRGBO(255, 169, 64, 1),
    const Color.fromRGBO(255, 192, 105, 1)
  ];
  static List<Color> yellow = [
    const Color.fromRGBO(255, 197, 61, 1),
    const Color.fromRGBO(255, 214, 102, 1)
  ];
  static List<Color> vocano = [
    const Color.fromRGBO(255, 122, 69, 1),
    const Color.fromRGBO(255, 156, 110, 1)
  ];
  static List<Color> red = [
    const Color.fromRGBO(245, 34, 45, 1),
    const Color.fromRGBO(255, 120, 117, 1)
  ];
  static List<Color> blue = [
    const Color.fromRGBO(9, 109, 217, 1),
    const Color.fromRGBO(24, 144, 255, 1)
  ];
  static List<GradientItem> gradientList = [
    GradientItem("magenta", magenta),
    GradientItem("purple", purple),
    GradientItem("geekblue", geekblue),
    GradientItem("cyan", cyan),
    GradientItem("green", green),
    GradientItem("lime", lime),
    GradientItem("yellow", yellow),
    GradientItem("gold", gold),
    GradientItem("vocano", vocano),
    GradientItem("red", red),
    GradientItem("blue", blue),
  ];
}