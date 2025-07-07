import 'package:flutter/material.dart';
import 'package:world_time_app/WorldTime/ChooseLocation.dart';
import 'package:world_time_app/WorldTime/Home.dart';
import 'package:world_time_app/WorldTime/Loading.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

