import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class Todo {
  static List<String> todoList = [
    'fahamin',
    'ff'
        'ee'
        'wwww'
        'cc'
        'tttt'
  ];
}

class TodoCubit extends Cubit<TodoInitial> {
  TodoCubit() : super(TodoInitial(todos: Todo.todoList));

  addNewTodo(String todo) {
    final todoList = state.todos;
    todoList.add(todo);
    emit(TodoInitial(todos: todoList));
  }

  deleteTodo(int index) {
    final todoList = state.todos;
    todoList.removeAt(index);
    emit(TodoInitial(todos: todoList));
  }
}
