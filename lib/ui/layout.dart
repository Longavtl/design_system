import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
   Layout({
     this.width_Container = 400,
     this.height_Container = 300,
     this.value_Column = 2,
     this.x = 0.4,
     this.y = 0.3,
     this.z = 0.2
   });
   int value_Column;
   double width_Container;
   double height_Container;
   double x;
   double y;
   double z;
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
                 color: Colors.blue,
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
         return Container();
       case 4:
         return Container();
       case 5:
         return Container();
      }
      return Container();
  }
}
