import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function removeTaskCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.removeTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: removeTaskCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              color: Colors.white,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          autofocus: true,
          focusColor: Colors.white,
          hoverColor: Colors.white,
          activeColor: Colors.white,
          value: isChecked,
          checkColor: Colors.redAccent,
          onChanged: checkboxCallback,
        ));
  }
}
