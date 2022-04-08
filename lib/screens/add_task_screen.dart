import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_project/models/task_data.dart';
import 'package:flutter_project/models/task.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTask = "";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: TextField(
                autofocus: true,
                onChanged: (value) {
                  setState(() {
                    newTask = value;
                  });
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Task task = Task(name: newTask);
                Provider.of<TaskData>(context, listen: false).addTask(task);
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 50,
                width: 100,
                child: Center(
                  child: Text(
                    "Valider",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
