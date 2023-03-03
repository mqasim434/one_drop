import 'package:flutter/material.dart';
import 'package:one_drop/screens/main_screens/homePage.dart';
import 'package:one_drop/screens/main_screens/today.dart';
import 'package:one_drop/screens/signUp.dart';
import 'package:one_drop/screens/signinWithEmployeeCode.dart';
import 'package:one_drop/screens/signupOptions.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'TEST SCREEN',
              style: TextStyle(fontSize: 50),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Test()),
                );
              },
              child: Text('GO NEXT'),
            ),
          ],
        ),
      ),
    );
  }
}
