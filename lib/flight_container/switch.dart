import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoSwitch(
            value: isSwitched,
            activeColor: Colors.orange[800],
            onChanged: (value) {
              print("VALUE : $value");
              setState(() {
                isSwitched = value;
              });
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          // Text(
          //   '',
          //   style: TextStyle(color: Colors.red, fontSize: 25.0),
          // )
        ]);
  }
}
