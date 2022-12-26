import 'package:flutter/material.dart';
class TaskTitle extends StatelessWidget {
  final bool? isChecked;
  final String? title;
  final Function? checkboxCallback;
  final Function()? longPressCallback;
  const TaskTitle({super.key, this.isChecked,this.title, this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Text("$title",style: TextStyle(decoration: isChecked==true?
          TextDecoration
          .lineThrough:null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue){
            checkboxCallback!(newValue);
        },
      ),
      onLongPress: longPressCallback,
    );
  }
}

