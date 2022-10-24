part of 'tasks_bloc.dart';


abstract class TastsEvent extends Equatable{
  const TastsEvent();

  @override
  List<Object> get props => [];
}
class AddTask extends TastsEvent{
  final Task task;

  const AddTask({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class UpdateTask extends TastsEvent{
  final Task task;

  const UpdateTask({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}

class DeleteTask extends TastsEvent{
  final Task task;

  const DeleteTask({
    required this.task,
  });

  @override
  List<Object> get props => [task];
}