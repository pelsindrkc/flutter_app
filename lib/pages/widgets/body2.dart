import 'package:flutter/material.dart';

class Body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                "assets/images/agac.jpg",
                width: 150,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  " Ağaç Dikme \n 23.07.2023  10.30",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                "assets/images/barinak.jpg",
                width: 150,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  " Hayvan Barınağı \n 12.08.2023  12.30",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
