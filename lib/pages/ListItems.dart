import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moodboard_app/pages/ItemCard.dart';
import 'Moods.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  final String today = DateFormat('yyyy-MM-dd').format(DateTime.now());

  List<Moods> moods = [];

  @override
  void initState() {
    super.initState();
    moods = [
      Moods(name: 'Elija', mood: 'Happy', date: today),
      Moods(name: 'Caila', mood: 'Happy', date: today),
      Moods(name: 'Joy', mood: 'Disappointed', date: today),
      Moods(name: 'Princes', mood: 'Confused', date: today),
      Moods(name: 'Yesha', mood: 'In love', date: today),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          'MoodBoard Tracker',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'My Mood',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[800],
                ),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: moods.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Itemcard(moods: moods[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}