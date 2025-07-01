import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moodboard_app/pages/Addmood.dart';
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
      Moods(name: 'Elija', mood: 'Sad', date: today),
      Moods(name: 'Elija', mood: 'Disappointed', date: today),
      Moods(name: 'Elija', mood: 'Confused', date: today),
      Moods(name: 'Elija', mood: 'In love', date: today),
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
            color: Colors.pink,
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
      body: Column(
        children: [
          SizedBox(height: 10),
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
          SizedBox(height: 10),
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Addmood()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent[200],
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Add Mood',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}