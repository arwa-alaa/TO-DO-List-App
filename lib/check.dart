import 'package:flutter/material.dart';

import 'List/tasks.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      selectedTileColor: Colors.white,
      value: isChecked,
      onChanged: (bool value) {
        setState(() {
          isChecked = value;
          print(isChecked);
          Tasks.myChecks = Tasks.myChecks + 1;
        });
      },
      activeColor: Colors.white,
      checkColor: Colors.black,
    );
  }
}
