import 'package:flutter/material.dart';

class Dompet extends StatefulWidget {
  @override
  _DompetState createState() => new _DompetState();
}

class _DompetState extends State<Dompet> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "Dompet",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFF3238)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
