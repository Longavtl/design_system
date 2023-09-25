import 'package:design_system/style/model/color.dart';
import 'package:flutter/material.dart';

class Radio_Custom extends StatefulWidget {
  Radio_Custom({
    required this.Label,
    required this.Check,
    required this.Position,
    required this.State_Radio
});
  String Label;
  bool Check;
  String Position;
  String State_Radio;
  @override
  State<Radio_Custom> createState() => _Radio_CustomState();
}
enum Value_radio { yes, no }
class _Radio_CustomState extends State<Radio_Custom> {
  Value_radio? _character = Value_radio.yes;
  @override
  Widget build(BuildContext context) {
    switch(widget.Position){
      case 'No label':
        switch(widget.State_Radio) {
          case 'Active':
            switch(widget.Check){
              case false :
                return Radio(
                  value: Value_radio.no,
                  groupValue: _character,
                  onChanged: ( value) {
                  },
                );
              case true:
                return Radio(
                  value: Value_radio.yes,
                  groupValue: _character,
                  onChanged: ( value) {
                  },
                );
            }
          case 'Disabled':
            switch(widget.Check){
              case false :
                return Radio(
                  value: Value_radio.no,
                  groupValue: _character,
                  onChanged: ( value) {
                  },
                );
              case true:
                return Radio(
                  activeColor: FColor.greyList[5].value,
                  value: Value_radio.yes,
                  groupValue: _character,
                  onChanged: (value) {
                  },
                );
            }
        }
      case 'Right label':
        switch(widget.State_Radio) {
          case 'Active':
            switch(widget.Check){
              case false :
                return Row(
                  children: [
                    Radio(
                      value: Value_radio.no,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Checked'
                    )
                  ],
                );
              case true:
                return Row(
                  children: [
                    Radio(
                      value: Value_radio.yes,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Un checked'
                    )
                  ],
                );
            }
          case 'Disabled':
            switch(widget.Check){
              case false :
                return Row(
                  children: [
                    Radio(
                      value: Value_radio.no,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Checked'
                    )
                  ],
                );
              case true:
                return Row(
                  children: [
                    Radio(
                      activeColor: FColor.greyList[5].value,
                      value: Value_radio.yes,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                    SizedBox(width: 5,),
                    Text('Un checked'
                    )
                  ],
                );
            }
        }
      case 'Left label':
        switch(widget.State_Radio) {
          case 'Active':
            switch(widget.Check){
              case false :
                return Row(
                  children: [
                    Text('Checked'),
                    SizedBox(width: 5,),
                    Radio(
                      value: Value_radio.no,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                  ],
                );
              case true:
                return Row(
                  children: [
                    Text('Un checked'),
                    SizedBox(width: 5,),
                    Radio(
                      value: Value_radio.yes,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                  ],
                );
            }
          case 'Disabled':
            switch(widget.Check){
              case false :
                return Row(
                  children: [
                    Text('Checked'),
                    SizedBox(width: 5,),
                    Radio(
                      value: Value_radio.no,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                  ],
                );
              case true:
                return Row(
                  children: [
                    Text('Un checked'),
                    SizedBox(width: 5,),
                    Radio(
                      activeColor: FColor.greyList[5].value,
                      value: Value_radio.yes,
                      groupValue: _character,
                      onChanged: ( value) {
                      },
                    ),
                  ],
                );
            }
        }
    }
    return Container();
  }
}

