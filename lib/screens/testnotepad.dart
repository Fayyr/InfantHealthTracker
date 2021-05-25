import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:ihtprototype/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'dart:ui';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo List', home: new TodoList());
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> _todoItems = [];

  // This will be called each time the + button is pressed
  void _addTodoItem(String task) {
    // Only add the task if the user actually entered something
    if (task.length > 0) {
      setState(() => _todoItems.add(task));
    }
  }

  // Build the whole list of todo items
  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        // itemBuilder will be automatically be called as many times as it takes for the
        // list to fill up its available space, which is most likely more than the
        // number of todo items we have. So, we need to check the index is OK.
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        }
      },
    );
  }

  // Build a single todo item
  Widget _buildTodoItem(String todoText, int index) {
    return new ListTile(
        title: new Text(todoText), onTap: () => _promptRemoveTodoItem(index));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey[800]),
          backgroundColor: Colors.pink[50],
          title: new Text('NOTEPAD',
              style: GoogleFonts.josefinSans(
                  color: Colors.blueGrey[800],
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24))),
      drawer: DrawerCode(),
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.pink[50],
          onPressed:
              _pushAddTodoScreen, // pressing this button now opens the new screen
          tooltip: 'Add task',
          child: new Icon(
            Icons.add,
            color: Colors.blueGrey[800],
          )),
    );
  }

  void _pushAddTodoScreen() {
    // Push this page onto the stack
    Navigator.of(context).push(
        // MaterialPageRoute will automatically animate the screen entry, as well
        // as adding a back button to close it
        new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: new AppBar(
              iconTheme: IconThemeData(color: Colors.blueGrey[800]),
              backgroundColor: Colors.pink[50],
              title: new Text('Add a note',
                  style: GoogleFonts.josefinSans(
                      color: Colors.blueGrey[800],
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      fontSize: 24))),
          drawer: DrawerCode(),
          body: Column(
            children: [
              new TextField(
                autofocus: true,
                onSubmitted: (val) {
                  _addTodoItem(val);
                  Navigator.pop(context); // Close the add todo screen
                },
                decoration: new InputDecoration(
                    hintText: 'Write Here...',
                    contentPadding: const EdgeInsets.all(16.0)),
              ),
            ],
          ));
    }));
  }

  void _removeTodoItem(int index) {
    setState(() => _todoItems.removeAt(index));
  }

// Show an alert dialog asking the user to confirm that the task is done
  void _promptRemoveTodoItem(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              title: new Text('Delete note'),
              actions: <Widget>[
                new FlatButton(
                    child: new Text('Cancel'),
                    onPressed: () => Navigator.of(context).pop()),
                new FlatButton(
                    child: new Text('Delete'),
                    onPressed: () {
                      _removeTodoItem(index);
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }
}
