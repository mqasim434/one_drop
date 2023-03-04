import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/custom_widgets/bottomProgressBar.dart';
import 'package:one_drop/custom_widgets/checkBoxTile.dart';
import 'package:one_drop/screens/conditionsScreen.dart';

class AreasToWork extends StatefulWidget {
  @override
  State<AreasToWork> createState() => _AreasToWorkState();
}

class _AreasToWorkState extends State<AreasToWork> {
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
                    'Which areas would you like \nto work on?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Let\'s get started.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 1,
                        addRepaintBoundaries: true,
                        addAutomaticKeepAlives: true,
                        (BuildContext builder, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            CheckBoxTile(
                              title: 'Manage blood sugar',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Loose weight',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Eat healthier',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Exercise more often',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Start or maintain a specific diet',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Lower Cholesterol',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Reduce blood sugar',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Manage stress',
                              isRounded: false,
                            ),
                            CheckBoxTile(
                              title: 'Track numbers',
                              isRounded: false,
                            ),
                          ],
                        ),
                      );
                    }),
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
                    buttonText: 'Continue',
                    width: 500,
                    onPress: () {
                      print('HELLO');
                    },
                  ),
                  BottomProgressBar(progressWidth: 130),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
