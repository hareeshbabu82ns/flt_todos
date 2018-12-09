import 'todo.dart';

class AppState {
  final List<Todo> todos;

  AppState({
    this.todos = const [],
  });

  AppState copyWith({
    List<Todo> todos,
  }) {
    return new AppState(
      todos: todos ?? this.todos,
    );
  }

  @override
  int get hashCode => todos.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          todos == other.todos;

  @override
  String toString() {
    return 'AppState{todos: $todos}';
  }
}
