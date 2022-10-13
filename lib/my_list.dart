import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:tugas_api/my_item.dart';
import 'package:http/http.dart' as http;
import 'halaman_detail.dart';
import 'model/respon_orang.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  String url =
      "https://d1770a3b-5585-440c-9bcc-fb90aa129735.mock.pstmn.io/api/users/";
  List<Orang> orangs = [];
  void _ambilData() async {
    var response = await http.get(Uri.parse(url));
    print("jumlah orang ${orangs.length}");
    ResponOrang responOrang = ResponOrang.fromJson(jsonDecode(response.body));
    orangs = responOrang.orang ?? [];
    print("jumlah orang ${orangs.length}");
    setState(() {});
  }

  @override
  void initState() {
    _ambilData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('LIST KELUARGAKU'),
        ),
        backgroundColor:  Color(0xFF2A26ED),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MyItem(orang: orangs[index]);
        },
        itemCount: orangs.length
      ),
    );
  }
}
