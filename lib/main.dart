import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        body: Center(
          child: Text('List of Todos'),
        ),
      ),
    );
  }
}
