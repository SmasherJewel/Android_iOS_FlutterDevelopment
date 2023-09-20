// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.green.shade400,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/poor.jpg'),
          ),
        ),
      ),
    ),
  );
}
