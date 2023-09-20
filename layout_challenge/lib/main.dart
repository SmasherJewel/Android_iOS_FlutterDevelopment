// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    LayoutDesign(),
  );
}

class LayoutDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: double.infinity,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 45.0, 0.0),
                  width: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.yellow,
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: double.infinity,
                  margin: EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                  width: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
