import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/custom_widgets/Buttons/bottomProgressBar.dart';
import 'package:one_drop/custom_widgets/checkBoxTile.dart';

class MoreConditions extends StatefulWidget {
  const MoreConditions({Key? key}) : super(key: key);

  @override
  State<MoreConditions> createState() => _MoreConditionsState();
}

class _MoreConditionsState extends State<MoreConditions> {
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
                    'Can we help you with any \nof the following, too?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Check any that apply',
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
                                  title: 'High Cholesterol',
                                  isRounded: false,
                                ),
                                CheckBoxTile(
                                  title: 'High Blood Pressure',
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
                  BottomProgressBar(progressWidth: 210),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
