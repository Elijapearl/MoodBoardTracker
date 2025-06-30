import 'package:flutter/material.dart';
import 'Moods.dart';

class Itemcard extends StatelessWidget {
  final Moods moods;
  const Itemcard({super.key, required this.moods});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.pinkAccent, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Name: ${moods.name}',
            style: TextStyle(
              color: Colors.pink[800],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Mood: ${moods.mood}',
            style: TextStyle(
              color: Colors.pink[600],
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Date: ${moods.date}',
            style: TextStyle(
              color: Colors.pink[600],
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}