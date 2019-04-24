import 'package:flutter/material.dart';

class Referal extends StatefulWidget {
  @override
  _ReferalState createState() => new _ReferalState();
}

class _ReferalState extends State<Referal> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: new Container(
            child: Center(
              child: Text(
                "Referral",
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
