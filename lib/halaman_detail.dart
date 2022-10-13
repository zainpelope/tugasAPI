import 'package:flutter/material.dart';
import 'package:tugas_api/model/respon_orang.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({Key? key, required this.orang}) : super(key: key);
  final Orang orang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: Text('HALAMAN DETAIL'),
          ),
        ),
        backgroundColor: const Color(0xFF2A26ED),
      ),
      body: Column(
        children: [
          Image.network(
            orang.photo??"",
            width: double.infinity,
            height: 310,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "NAMA",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            orang.nama ?? "",
            style: const TextStyle(fontSize: 10),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "USIA",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
           orang.usia.toString() ,
            style: const TextStyle(fontSize: 10),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "TANGGAL LAHIR",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            orang.tanggalLahir.toString(),
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
