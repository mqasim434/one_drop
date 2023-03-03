import 'package:flutter/material.dart';
import 'package:one_drop/screens/introScreen.dart';
import 'package:one_drop/screens/test.dart';
import 'screens/signUp.dart';
import 'screens/signupOptions.dart';
import 'screens/signInOptions.dart';
import 'screens/singnIn.dart';
import 'screens/signinWithEmployeeCode.dart';
import 'screens/welcome.dart';
import 'screens/areasScreen.dart';
import 'screens/conditionsScreen.dart';
import 'screens/moreConditions.dart';
import 'screens/dateOfBirth.dart';
import 'screens/importYourData.dart';
import 'screens/main_screens/today.dart';
import 'screens/main_screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'One Drop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
