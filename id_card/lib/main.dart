// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyIdCard(),
  ));
}

class MyIdCard extends StatefulWidget {
  const MyIdCard({Key? key}) : super(key: key);

  @override
  State<MyIdCard> createState() => _MyIdCardState();
}

class _MyIdCardState extends State<MyIdCard> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('ENR ID CARD'),
        centerTitle: true,
        // for removing app bar shadow
        elevation: 0.0,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pic.png',
                ),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blue[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Text(
              'Eliot Robot',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mark_email_unread_sharp,
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'roboeliot869@gmail.com',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '+91 888 5559 333',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
