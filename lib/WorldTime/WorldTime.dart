import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;         // location name for UI
  String time = '';        // time in that location
  String url;              // location url for API endpoint
  bool isDaytime = true;   // true if daytime, false if night

  WorldTime({
    required this.location,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      final uri = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
      print('[WorldTime] Fetching time from: $uri');

      final response = await http.get(uri);

      print('[WorldTime] HTTP status code: ${response.statusCode}');
      print('[WorldTime] Response body: ${response.body}');

      if (response.statusCode != 200) {
        throw Exception('HTTP request failed with status ${response.statusCode}');
      }

      Map<String, dynamic> data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offsetSign = data['utc_offset'].substring(0, 1);
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);

      DateTime now = DateTime.parse(datetime);

      Duration offsetDuration = Duration(
        hours: int.parse(offsetHours),
        minutes: int.parse(offsetMinutes),
      );

      if (offsetSign == '+') {
        now = now.add(offsetDuration);
      } else {
        now = now.subtract(offsetDuration);
      }

      isDaytime = now.hour > 6 && now.hour < 20;
      time = DateFormat.jm().format(now);

      print('[WorldTime] Computed time: $time (isDaytime: $isDaytime)');
    } catch (e) {
      print('[WorldTime] Error getting time: $e');
      time = 'Could not get time';
    }
  }
}