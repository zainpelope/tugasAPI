import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("FANDI")),
          backgroundColor: const Color(0xFF2A26ED),
        ),
        body: Column(
          children: [
            Image.network(
              "https://picsum.photos/200/300",
              width: double.infinity,
              height: 303,
              //fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
