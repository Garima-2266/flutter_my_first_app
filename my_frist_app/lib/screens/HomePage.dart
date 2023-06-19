import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Todo Detail'),
          onPressed: () {
            // Navigate to the TodoDetailPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TodoDetailPage()),
            );
          },
        ),
      ),
    );
  }
}

class TodoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Detail'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            // Navigate back to the HomePage
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
