import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/tasks_data.dart';

// ignore: must_be_immutable
class AddTasksScreen extends StatelessWidget {
  late String newTaskTile;

  AddTasksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Tasks",
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
               TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
               newTaskTile=newText;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent)),
                onPressed: () {
                Provider.of<TasksData>(context,listen: false).addTasks(newTaskTile);
                Navigator.pop(context);
                },
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
