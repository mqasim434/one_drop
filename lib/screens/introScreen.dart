import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/screens/signUp.dart';
import 'package:one_drop/screens/singnIn.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.pexels.com/photos/15672561/pexels-photo-15672561.jpeg',
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: SizedBox(
                    width: 90,
                    child: Image.asset(
                      'Images/OneDrop_Logo.png',
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                  ),
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.7,
                    // color: Colors.amberAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Reimagine\npossible',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        const Text(
                          'Take charge of your health with a\n'
                          'personal coach, your own behaviour\n'
                          'change plan, health forecasts and\n'
                          'insights, and more.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          'Your transformation starts today.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ),
                            );
                          },
                          child: const Text('Have an account? Sign in'),
                        ),
                        PurpleButton(
                          buttonText: "Sign up",
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
