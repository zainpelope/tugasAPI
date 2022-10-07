import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas_api/todo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mhJson = '';
  Map<String, dynamic> myMap = {};
  void _getSampleJson() {
    http
        .get(Uri.parse('http://jsonplaceholder.typicode.com/todos/1'))
        .then((value) {
      print(value.body);
      setState(() {
        mhJson = value.body;
        myMap = jsonDecode(value.body);
        var myTodo = Todo.fromJson(jsonDecode(value.body));
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  void initState() {
    _getSampleJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan API"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("""
                userId : ${myMap['userId']}
                id : ${myMap['id']}
                Title : ${myMap['title']}
                Completed : ${myMap['completed']}
                """),
            ],
          ),
        ),
      ),
    );
  }
}
