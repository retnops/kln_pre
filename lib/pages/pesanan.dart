import 'package:flutter/material.dart';

class Pesanan extends StatefulWidget {
  @override
  _PesananState createState() => new _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
              child: Center(
                child: Text(
                  "Pesanan",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFF3238)),
                ),
              )),
        ),
      ),
    );
  }
}
