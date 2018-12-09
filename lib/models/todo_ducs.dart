import 'package:redux/redux.dart';

import 'todo.dart';

final todosReducer = combineReducers<List<Todo>>([
  new TypedReducer<List<Todo>, AddTodoAction>(_addTodo),
]);

class AddTodoAction {
  final Todo todo;
  AddTodoAction(this.todo);
}

List<Todo> _addTodo(List<Todo> todos, AddTodoAction action) {
  return List.from(todos)..add(action.todo);
}
