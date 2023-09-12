import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
   Layout({
     required this.width_Container,
     required this.height_Container,
     this.value_Column = 2,
     this.background_Container=Colors.blue,
     this.x = 0.2,
     this.y = 0.3,
     this.z = 0.2,
     this.t = 0.1,
     this.w = 0.1,
   });
   int value_Column;
   double width_Container;
   double height_Container;
   Color background_Container;
   double x;
   double y;
   double z;
   double t;
   double w;
  @override
  Widget build(BuildContext context) {
     switch (value_Column)
        {
       case 1:
           return Container(
             color: Colors.blue,
             width: double.infinity,
             height: double.infinity,
           );
       case 2:
         return Container(
           height: height_Container,
           width: width_Container,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 color: background_Container,
                 width: width_Container*x,
               ),
               Container(
                 color: Colors.black,
                 width: width_Container*y,
               ),
             ],
           ),
         );
       case 3:
         return Container(
           height: height_Container,
           width: width_Container,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 color: background_Container,
                 width: width_Container*x,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*y,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*z,
               ),
             ],
           ),
         );
       case 4:
         return Container(
           height: height_Container,
           width: width_Container,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 color: background_Container,
                 width: width_Container*x,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*y,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*z,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*t,
               ),
             ],
           ),
         );
       case 5:
         return Container(
           height: height_Container,
           width: width_Container,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 color: background_Container,
                 width: width_Container*x,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*y,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*z,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*t,
               ),
               Container(
                 color: background_Container,
                 width: width_Container*w,
               ),
             ],
           ),
         );
      }
      return Container();
  }
}
