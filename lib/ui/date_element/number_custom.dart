import 'package:flutter/material.dart';

class Number_Custom extends StatelessWidget {
  Number_Custom(this.listNumber);
  List<int> listNumber = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listNumber.length,
        itemBuilder: (context, index) => Align(
          alignment:Alignment.center,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                listNumber[index].toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

