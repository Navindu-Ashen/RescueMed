import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rescue_med_ambulance/Screens/details_page.dart';
import 'package:rescue_med_ambulance/Screens/home_page.dart';
import 'package:rescue_med_ambulance/Screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (value) {
      runApp(
        MyApp(),
      );
    },
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
