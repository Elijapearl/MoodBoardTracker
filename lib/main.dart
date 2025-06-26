import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
              ),
            ],
          ),
        ),
        backgroundColor: Colors.pinkAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Greeting message (no name yet)
            Center(
              child: Text(
                'Hi there! Welcome to your MoodBoard Dashboard.',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[800],
                ),
              ),
            ),
            SizedBox(height: 30),

            // Dashboard Title
            Center(
              child: Text(
                'Your Moods!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[800],
                ),
              ),
            ),
            SizedBox(height: 30),



            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                moodCard('😀 Happy', Colors.yellow[100]!),
                moodCard('😔Sad', Colors.blue[100]!),
              ],
            ),
            SizedBox(height: 10),

            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                moodCard('😠 Angry', Colors.red[100]!),
                moodCard('😩 Tired', Colors.purple[100]!),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                moodCard('🤔Confused', Colors.red[100]!),
                moodCard('🙄 Annoyed', Colors.purple[100]!),
              ],
            ),
            SizedBox(height: 10),

            // Row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                moodCard('😍 Loved', Colors.pink[100]!),
                moodCard('😌 Relaxed', Colors.green[100]!),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Mood Box Widget
  Widget moodCard(String label, Color color) {
    return Container(
      width: 150,
      height: 100,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.pinkAccent, width: 2),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Colors.pink[800],
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


