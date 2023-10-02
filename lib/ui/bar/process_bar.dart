import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class Process_Bar extends StatefulWidget {
  const Process_Bar({Key? key}) : super(key: key);

  @override
  _Process_BarState createState() => _Process_BarState();
}

class _Process_BarState extends State<Process_Bar> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  int selectedNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 414,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedNumber = list[index];
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: list[index] <= selectedNumber
                            ? Colors.blue
                            : FColor.greyList[3].value,
                      ),
                      child: Center(
                        child: Text(
                          list[index].toString(),
                          style: TextStyle(
                            fontSize: 12,color: list[index] <= selectedNumber?Colors.white:Colors.black,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}