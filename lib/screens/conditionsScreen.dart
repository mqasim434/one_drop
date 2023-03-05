import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/custom_widgets/bottomProgressBar.dart';
import 'package:one_drop/custom_widgets/checkBoxTile.dart';
import 'package:one_drop/screens/moreConditions.dart';

class ConditionsScreen extends StatefulWidget {
  const ConditionsScreen({Key? key}) : super(key: key);

  @override
  State<ConditionsScreen> createState() => _ConditionsScreenState();
}

class _ConditionsScreenState extends State<ConditionsScreen> {
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
                    'Which condition can we\n help you with?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Which is your Diabetes type?',
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
                                title: 'Type 1 Diabetes',
                                isRounded: true,
                              ),
                              CheckBoxTile(
                                title: 'Type 2 Diabetes',
                                isRounded: true,
                              ),
                              CheckBoxTile(
                                title: 'LADA(1.5)',
                                isRounded: true,
                              ),
                              CheckBoxTile(
                                title: 'Pre-diabetes/at risk for Diabetes',
                                isRounded: true,
                              ),
                              CheckBoxTile(
                                title: 'Other Diabetes type',
                                isRounded: true,
                              ),
                              CheckBoxTile(
                                title: 'None of these',
                                isRounded: true,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MoreConditions(),
                        ),
                      );
                    },
                  ),
                  BottomProgressBar(progressWidth: 160),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
