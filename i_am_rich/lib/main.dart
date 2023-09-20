// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// The main  function is the  starting point for  all our flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Change main screen color
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('I am rich'),
          // Change Background app bar color
          backgroundColor: Colors.blueGrey[900],
        ),
        // In Body we can add image widget
        body: Center(
          child: Image(
            //   Asset image that's come from our folder & Network Image that's come from the internet
            // image: NetworkImage(
            //     'https://www.freecodecamp.org/news/content/images/2022/09/jonatan-pie-3l3RwQdHRHg-unsplash.jpg'),),

            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
