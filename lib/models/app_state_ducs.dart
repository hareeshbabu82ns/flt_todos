import 'todo_ducs.dart';
import 'app_state.dart';

export 'app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    todos: todosReducer(state.todos, action),
  );
}
