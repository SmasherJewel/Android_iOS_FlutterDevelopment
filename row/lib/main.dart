// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyCustomApp(),
  );
}

// stless to create a StatelessWidget
class MyCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
