import 'package:flutter/material.dart';
import 'WorldTime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin'),
    WorldTime(url: 'Europe/Paris', location: 'Paris'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow'),
    WorldTime(url: 'Europe/Rome', location: 'Rome'),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid'),
    WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam'),
    WorldTime(url: 'Europe/Zurich', location: 'Zurich'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg'),
    WorldTime(url: 'Asia/Manila', location: 'Manila'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai'),
    WorldTime(url: 'Asia/Kolkata', location: 'Mumbai'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong'),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai'),
    WorldTime(url: 'Asia/Kuala_Lumpur', location: 'Kuala Lumpur'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta'),
    WorldTime(url: 'Asia/Ho_Chi_Minh', location: 'Ho Chi Minh'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney'),
    WorldTime(url: 'Australia/Perth', location: 'Perth'),
    WorldTime(url: 'Pacific/Honolulu', location: 'Honolulu'),
    WorldTime(url: 'Pacific/Auckland', location: 'Auckland'),
    WorldTime(url: 'America/New_York', location: 'New York'),
    WorldTime(url: 'America/Chicago', location: 'Chicago'),
    WorldTime(url: 'America/Los_Angeles', location: 'Los Angeles'),
    WorldTime(url: 'America/Denver', location: 'Denver'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico City'),
    WorldTime(url: 'America/Toronto', location: 'Toronto'),
    WorldTime(url: 'America/Sao_Paulo', location: 'São Paulo'),
    WorldTime(url: 'America/Buenos_Aires', location: 'Buenos Aires'),
    WorldTime(url: 'America/Vancouver', location: 'Vancouver'),
    WorldTime(url: 'America/Anchorage', location: 'Anchorage'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix'),
    WorldTime(url: 'America/Bogota', location: 'Bogotá'),
    WorldTime(url: 'America/Lima', location: 'Lima'),
    WorldTime(url: 'Antarctica/Palmer', location: 'Antarctica'),
  ];

  void updateTime(int index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    // navigate to home and pass data
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Choose a Location'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[800],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () => updateTime(index),
                title: Text(locations[index].location),
                leading: const Icon(Icons.public),
              ),
            ),
          );
        },
      ),
    );
  }
}