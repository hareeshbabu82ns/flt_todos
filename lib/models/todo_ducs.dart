import 'package:redux/redux.dart';

import 'todo.dart';

export 'todo.dart';

final todosReducer = combineReducers<List<Todo>>([
  new TypedReducer<List<Todo>, AddTodoAction>(_addTodo),
  new TypedReducer<List<Todo>, UpdateTodoAction>(_updateTodo),
]);

class AddTodoAction {
  final Todo todo;
  AddTodoAction(this.todo);
}

List<Todo> _addTodo(List<Todo> todos, AddTodoAction action) {
  return List.from(todos)..add(action.todo);
}

class UpdateTodoAction {
  final Todo todo;
  UpdateTodoAction(this.todo);
}

List<Todo> _updateTodo(List<Todo> todos, UpdateTodoAction action) {
  return todos
      .map((todo) => todo.id == action.todo.id ? action.todo : todo)
      .toList();
}
