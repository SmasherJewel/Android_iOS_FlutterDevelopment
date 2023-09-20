// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(
    const BasicApp(),
  );
}

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
          // for center the app bar title
          centerTitle: true,
          // ctr + q to find the different strengths of this Color
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: const Center(
          child: Text(
            'Flutter Developer',
            // We can use style property to Styling the text
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // For space between the letters
              letterSpacing: 2.0,
              // Color the text
              color: Colors.grey,
              // Change the text style
              fontFamily: 'IndieFlower',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text('Click'),
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }
}
