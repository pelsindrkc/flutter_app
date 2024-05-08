import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.orange,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: "Ara",
            ),
          ),
        ),
      ],
    );
  }
}
