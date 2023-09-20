// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'When you have a dream, you\'ve got to grab it and never let go.',
    'Nothing is impossible. The word itself says \'I\'m possible!',
    'There is nothing impossible to they who will try.',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(' Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // use a map function to create a ListOfItem in data list
          children: quotes.map(
            (quotesMap) {
              return Text(quotesMap);
            },
          ).toList(),
        ),
      ),
    );
  }
}
