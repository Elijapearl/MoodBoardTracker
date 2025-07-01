import 'package:flutter/material.dart';

class Addmood extends StatefulWidget {
  const Addmood({super.key});

  @override
  State<Addmood> createState() => _AddmoodState();
}

class _AddmoodState extends State<Addmood> {
  final List<String> moodList = [
    'Happy', 'Sad', 'Angry', 'Tired', 'Confused',
    'Annoyed', 'Awkward', 'Sleepy', 'Sick', 'Nervous',
    'Scared', 'Surprised', 'Stressed', 'Hurt', 'Disappointed',
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedMood;
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Mood"),
        backgroundColor: Colors.pinkAccent[300],
        centerTitle: true,
      ),
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Mood',
                  border: OutlineInputBorder(),
                ),
                value: selectedMood,
                items: moodList.map((mood) {
                  return DropdownMenuItem(
                    value: mood,
                    child: Text(mood),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedMood = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select mood';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Write a little more about this (optional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // mood is valid
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: Text(
                  'Save Mood',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
