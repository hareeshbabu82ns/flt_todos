import 'dart:convert';

import 'package:meta/meta.dart';

class Todo {
  final int id;
  final String title;
  final bool done;

  Todo({
    @required this.id,
    @required this.title,
    this.done = false,
  });

  Todo fromJson(String jsonData) {
    final Map<String, dynamic> data = json.decode(jsonData);
    return Todo(
      id: data['id'],
      title: data['title'],
      done: data['done'],
    );
  }

  Todo copyWith({int id, String title, bool done}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      done: done ?? this.done,
    );
  }
}
