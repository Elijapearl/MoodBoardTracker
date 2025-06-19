import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('MoodBoard Tracker', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink, shadows: [
          Shadow(blurRadius: 10.0, color: Colors.black, offset: Offset(2.0,2.0))
        ]
        ),),
        backgroundColor: Colors.pinkAccent[700],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Elija Pearl Parafina',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Age:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    '21 Years Old',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}