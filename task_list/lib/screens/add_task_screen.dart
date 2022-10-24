import 'package:bloc3/blocs/bloc/tasks_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextEditingController titleController= TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Add Task', style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: InputDecoration(
              label: Text('Title'),
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
              ElevatedButton(onPressed: (){
                var task = Task(
                  title: titleController.text,
                );
                context.read<TasksBloc>().add(AddTask(task: (task)));
                Navigator.pop(context);
              }, child: Text('Add')),
            ],
          ),
        ],
      ),
    );
  }
}
