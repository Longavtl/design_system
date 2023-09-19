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
enum SingingCharacter { lafayette, jefferson }
class _Radio_CustomState extends State<Radio_Custom> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    switch(widget.Position){
      case 'No label':
        return Container(
          height: 200,
          child: Row(
            children: [
              Radio(
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
              ),
              Radio(
                activeColor: FColor.greyList[5].value,
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
            ],
          ),
        );
      case 'Right label':
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text('Lafayette'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Thomas Jefferson'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ],
          ),
        );
    }
    return Container();
  }
}

