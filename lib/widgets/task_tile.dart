import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String title;
  bool isChecked = false;
  final Function checkBoxCallBack;
  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        Checkbox(
            value: isChecked,
            onChanged: (value) {
              checkBoxCallBack(value);
            }),
      ],
    );
  }
}
