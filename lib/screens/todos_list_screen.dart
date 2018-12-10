import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../models/todo.dart';
import '../models/todo_ducs.dart';

import '../models/app_state.dart';

import 'package:flt_todos/views/todo_item.dart';

class TodosListScreen extends StatelessWidget {
  Widget _buildTodosList() {
    return StoreConnector<AppState, List<Todo>>(
      converter: (store) => store.state.todos,
      builder: (context, List<Todo> todos) {
        if (todos.length == 0)
          return Center(
            child: Text('List of Todos'),
          );
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext contex, index) {
            return TodoItemView(todos[index]);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: _buildTodosList(),
      floatingActionButton: TodoAddFloatingButton(),
    );
  }
}

class TodoAddFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) {
        return () =>
            store.dispatch(AddTodoAction(Todo(id: 2, title: 'Todo 2')));
      },
      builder: (context, callback) {
        return FloatingActionButton(
          onPressed: callback,
          child: Icon(Icons.add),
        );
      },
    );
  }
}
