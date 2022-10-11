

import 'package:flutter/material.dart';
import 'package:tugas_api/my_item.dart';
import 'package:tugas_api/my_list.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'My Family',
      home: MyList(),
    );
  }
}


