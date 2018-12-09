import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './screens/todos_list_screen.dart';
import './models/app_state_ducs.dart';
import './models/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = Store(
    appReducer,
    initialState: AppState(todos: [
      Todo(id: 1, title: 'Todo 1'),
    ]),
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Todos App',
        home: TodosListScreen(),
      ),
    );
  }
}
