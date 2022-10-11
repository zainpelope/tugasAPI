import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/respon_orang.dart';
import 'my_item.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  String url =
      "https://d1770a3b-5585-440c-9bcc-fb90aa129735.mock.pstmn.io/api/users/";

  List<Orang> orangs = [];

  void ambilData() async {
    var response = await http.get(Uri.parse(url));
    print("jumlah Orang ${orangs.length}");
    ResponOrang responOrang = ResponOrang.fromJson(jsonDecode(response.body));
    orangs = responOrang.orang ?? [];
    print("jumlah Orang ${orangs.length}");
    setState(() {});
  }

  @override
  void initState() {
    ambilData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('LIST KELUARGAKU'),
        ),
        backgroundColor: const Color(0xFF2A26ED),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return MyItem(orang: orangs[i],);
        },
        itemCount: orangs.length,
      ),
    );
  }
}
