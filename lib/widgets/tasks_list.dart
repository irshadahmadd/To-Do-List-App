import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/tasks_data.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(builder: (context, tasksData, child) {
      return ListView.builder(
          itemCount: tasksData.taskCount,
          itemBuilder: (context, index) {
            final task = tasksData.tasks[index];
            return TaskTitle(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                tasksData.upDateTask(task);
              },
              longPressCallback: () {
                tasksData.deleteTask(task);
              },
            );
          });
    });
  }
}
