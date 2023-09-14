import 'package:flutter/material.dart';

class Number_Picker extends StatefulWidget {
  const Number_Picker({Key? key}) : super(key: key);

  @override
  State<Number_Picker> createState() => _Number_PickerState();
}

class _Number_PickerState extends State<Number_Picker> {
  int Value=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Colors.black
        // ),
        borderRadius: BorderRadius.circular(9),
        color: Colors.blue
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if(Value>=1)
                  {
                    Value--;
                  }
              });
            },
            child: Icon(
              Icons.remove,color: Colors.white,
            ),
          ),
          Text(Value.toString(),style: TextStyle(fontSize: 20,color: Colors.white)),
          InkWell(
            onTap: () => setState(() {
              Value++;
            }),
            child: Icon(
                Icons.add,color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
