import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

enum Status { fdefault, active, disabled}

class PaginationItem extends StatelessWidget {

  final Status status;
  final String value;

  PaginationItem({
    required this.status,
    this.value = '1'
  });

  Color blue7 = FColor.blueList.firstWhere((element) => element.name == 'blue7').value;
  Color grey3 = FColor.greyList.firstWhere((element) => element.name == 'grey3').value;
  Color grey6 = FColor.greyList.firstWhere((element) => element.name == 'grey6').value;

  @override
  Widget build(BuildContext context) {

    Color color = status == Status.fdefault ? grey3
    : status == Status.active ? blue7
    : status == Status.disabled ? grey6 : grey3;

    Color textColor = status == Status.fdefault ? Colors.black : Colors.white; 
    
    return Container(
      width: 32,
      height: 32,
      margin: EdgeInsets.only(
        left: 8.0
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color
      ),
      child: Center(
        child: Text(value,
          style: TextStyle(
            color: textColor,
          ),
        )
      ),
    );
  }

}