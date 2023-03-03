import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/custom_widgets/Buttons/bottomProgressBar.dart';

class ImportYourData extends StatelessWidget {
  const ImportYourData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1F1E26),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 90,
                    child: Image.asset(
                      'Images/OneDrop_Logo.png',
                    ),
                  ),
                  const Text(
                    'Import your health data \nfrom other apps.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Apple health collects your \nhealth and fitness data from \ncompatible apps and devices.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Enable data sharing to import \n all your health data, so that you \n can track everything in one \nplace.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('No Thanks'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PurpleButton(
                    buttonText: 'Connect Apple Health',
                    width: 500,
                    onPress: () {
                      print('HELLO');
                    },
                  ),
                  BottomProgressBar(progressWidth: 320),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
