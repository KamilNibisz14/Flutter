import 'package:bloc3/blocs/bloc/tasks_bloc.dart';
import 'package:bloc3/models/task.dart';
import 'package:flutter/material.dart';

import '../widgets/tasks_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_task_screen.dart';
class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  void _addTask(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (context) => SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: AddTaskScreen()
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Scaffold(
          appBar: AppBar(title: const Text('TasksApp'),
            actions: [
              IconButton(onPressed: () => _addTask(context), icon: const Icon(Icons.add)),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Chip(label: Text('Tasks:')),
              ),
              TasksList(tasksList: tasksList,),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addTask(context),
            tooltip: 'Add Task',
            child: const Icon(Icons.add),
          ),
        );
      });
  }
}
