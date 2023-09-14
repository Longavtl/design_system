
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Switch_Custom extends StatefulWidget {
  Switch_Custom(this.isLocked,this.value) ;
  int value=3;
  bool isLocked ;
  @override
  State<Switch_Custom> createState() => _Switch_CustomState();
}

class _Switch_CustomState extends State<Switch_Custom> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
     switch(widget.value)
        {
       case 1:
         return  Container(
           height: 220,
           width: 200,
           child:
           FlutterSwitch(
             showOnOff: true,
             activeTextColor: Colors.black,
             inactiveTextColor: Colors.blue,
             value: status,
             onToggle: (val) {
               setState(() {
                 status = val;
               });
             },
           ),
         );
       case 2:
         return Container(
           child:CupertinoSwitch(
             activeColor: Colors.blue,
             value: status,
             onChanged: (value) {
               setState(() {
                 status=value;
               });
             },
           ),
         );
       case 3:
         return Container(
           child: Row(
             children: [
               status==false? Text('OFF'):Text('ON'),
               CupertinoSwitch(
                 activeColor: Colors.blue,
                 value: status,
                 onChanged: (value) {
                  if(widget.isLocked==false)
                    {
                      setState(() {
                        status=value;
                      });
                    }
                 },
               ),
             ],
           ),
         );
       case 4:
         return Container(
           height: 50,
           width: 70,
           child: Stack(
             children: [
               Center(
                 child: CupertinoSwitch(
                   activeColor: Colors.blue,
                   value: status,
                   onChanged: (value) {
                     setState(() {
                       status=value;
                     });
                   },
                 ),
               ),
               Positioned(
                    top: 17.5,
                   left: 17,
                   child: Text('ON',style: TextStyle(fontSize: 13),)
               )
             ],
           ),
         );
    }
    return Container();
  }
}
// child: Switch_Custom(false,1),