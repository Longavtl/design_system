import 'package:flutter/material.dart';

class Date_Custom extends StatelessWidget {
  Date_Custom(
      this.listDay,
      this.colorBorder
      ) ;
  List<String> listDay = [];
  Color colorBorder=Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listDay.length,
        itemBuilder: (context, index) => Align(
          alignment:Alignment.center,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: colorBorder),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                listDay[index].toString(),
                style: TextStyle(
                  fontSize: 12,
                fontFamily: 'Times New Roman'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
