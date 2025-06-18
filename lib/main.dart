import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('MoodBoard Tracker'),
        backgroundColor: Colors.pinkAccent[700],
      ),
      backgroundColor: Colors.pinkAccent[100],
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Elija Pearl Parafina',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink[800],
            ),
          ),
          Text(
            'BSIT 3',
            style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.italic,
              color: Colors.pink[600],
            ),
          ),
          Text(
            'MoodBoard App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.pink[400],
            ),
          ),
        ],
      ),
      ),
    ),
  ));
}