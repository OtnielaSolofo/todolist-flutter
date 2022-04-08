import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/models/task.dart';
import 'package:flutter_project/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:flutter_project/widgets/task_tile.dart';
import 'package:flutter_project/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_project/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.list,
                          color: Colors.lightBlueAccent,
                          size: 45,
                        ),
                        backgroundColor: Colors.white,
                        radius: 25,
                      )),
                  Text(
                    "Todoey",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 25, left: 25),
                  child: TasksList(
                    listTask: Provider.of<TaskData>(context).taskList,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddTaskScreen();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
