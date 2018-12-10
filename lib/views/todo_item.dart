import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:flt_todos/models/app_state.dart';
import 'package:flt_todos/models/todo_ducs.dart';

class TodoItemView extends StatelessWidget {
  Todo _todo;
  TodoItemView(this._todo);

  @override
  Widget build(BuildContext context) {
    // return Text('${todo.id} - ${todo.title}');
    return StoreConnector<AppState, VoidCallback>(
      converter: (store) {
        return () => store.dispatch(UpdateTodoAction(_todo));
      },
      builder: (context, callback) {
        return ListTile(
          leading: Checkbox(
            value: _todo.done,
            onChanged: (isChecked) {
              _todo = _todo.copyWith(done: isChecked);
              callback();
            },
          ),
          title: Text(
            _todo.title,
            style: Theme.of(context).textTheme.title,
          ),
        );
      },
    );
  }
}
