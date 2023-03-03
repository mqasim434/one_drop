import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';

class Coach extends StatelessWidget {
  const Coach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  color: const Color(0xFF1F1E26),
                  width: 200,
                  height: 700,
                  child: Image.asset(
                    'Images/phone.png',
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color(0xFF37343E),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'With Onedrop premium, your personal\n'
                    'coach gives you expert advice, answers\n'
                    'your questions, and offers\n'
                    'encouragement.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Coaching Faqs',
                    ),
                  ),
                  PurpleButton(
                    buttonText: 'Explore Premium',
                    onPress: () {
                      print('HELLO');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
