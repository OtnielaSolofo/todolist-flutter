import 'package:flutter/material.dart';
import 'package:flutter_project/models/task.dart';
import 'package:flutter_project/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  TasksList({required this.listTask});
  List<Task> listTask;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        title: listTask[index].name,
        isChecked: listTask[index].isDone,
        checkBoxCallBack: (value) {
          // listTask[index].toggleDone();
          Provider.of<TaskData>(context, listen: false)
              .deleteTask(listTask[index]);
        },
      ),
      itemCount: listTask.length,
    ));
  }
}
