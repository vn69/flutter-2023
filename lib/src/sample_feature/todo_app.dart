import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp_01/src/sample_feature/add_todo_screen.dart';
import 'package:myapp_01/src/type/todo.dart';

/// The details screen
class TodoApp extends StatefulWidget {
  /// Constructs a [TodoApp]
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<Todo> _todos = [];

  void _addTodo() async {
    final newTodo = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddTodoScreen()),
    );

    if (newTodo != null) {
      _todos.add(newTodo);
      Fluttertoast.showToast(
          msg: "job is added successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3);
    }

    setState(() {});
  }

  void _deleteTodoAtIndex(int index) {
    Fluttertoast.showToast(
        msg: "job is removed successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3);
    _todos.removeAt(index);
    setState(() {});
  }

  void _toggleTodoAtIndex(int index) {
    setState(() {
      final todo = _todos[index];
      _todos[index] = todo.copyWith(isCompleted: !todo.isCompleted);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          return CheckboxListTile(
            title: Text(todo.title),
            value: todo.isCompleted,
            onChanged: (_) => _toggleTodoAtIndex(index),
            secondary: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                if (await confirm(context)) {
                  return _deleteTodoAtIndex(index);
                }
                return print("cancel");
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
