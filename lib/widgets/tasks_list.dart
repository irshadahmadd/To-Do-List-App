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
    return  Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
            itemCount: tasksData.taskCount,
            itemBuilder: (context, index) {
              return TaskTitle(
                  title:tasksData.tasks[index].name,
                  isChecked: tasksData.tasks[index].isDone,
                  checkboxCallback: (checkboxState) {
                       tasksData.upDateTask(tasksData.tasks[index]);
                  }
              );
            });
      }

    );
  }
}




