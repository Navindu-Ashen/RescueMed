import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/details_page.dart';
import 'package:rescue_med_ambulance/Screens/home_page.dart';
import 'package:rescue_med_ambulance/Screens/login_page.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
