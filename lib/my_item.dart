import 'package:flutter/material.dart';
import 'package:tugas_api/model/respon_orang.dart';

import 'detail.dart';

class MyItem extends StatelessWidget {
  const MyItem({Key? key, required this.orang}) : super(key: key);
 final Orang orang;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 22, right: 22, top: 22),
        color: Colors.grey,
        height: 100,
        child: Row(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(orang.photo??""),
                radius: 50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(padding: EdgeInsets.only(top: 26)),
                Text(
                  orang.nama??"",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  orang.usia.toString(),
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  orang.tanggalLahir??"",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
