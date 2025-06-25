import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Profile()
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Text(
                'User Profile',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[800],
                ),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: Icon(
                Icons.person,
                color: Colors.pink,
                size: 100.0,
              ),
            ),
            SizedBox(height: 30),

            // Name
            Text(
              'Name:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
            Text(
              'Elija Pearl Parafina',
              style: TextStyle(
                fontSize: 22,
                color: Colors.pink[600],
              ),
            ),
            SizedBox(height: 20),

            // Email
            Text(
              'Email:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
            Text(
              'elipearlparafina@gmail.com',
              style: TextStyle(
                fontSize: 22,
                color: Colors.pink[600],
              ),
            ),
            SizedBox(height: 20),

            // Company
            Text(
              'Company:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
            Text(
              'Batangas State University TNEU Balayan',
              style: TextStyle(
                fontSize: 22,
                color: Colors.pink[600],
              ),
            ),
            SizedBox(height: 20),

            // Contact
            Text(
              'Contact:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink[800],
              ),
            ),
            Text(
              '09361932019',
              style: TextStyle(
                fontSize: 22,
                color: Colors.pink[600],
              ),
            ),
            SizedBox(height: 30),

            // LOGOUT Button
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.pinkAccent),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                child: Text(
                  'LOGOUT',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pinkAccent[700],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
