import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/blackButton.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/screens/main_screens/homePage.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1F1E26),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'Images/OneDrop_Logo.png',
                width: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 180,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signUp');
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  PurpleButton(
                    buttonText: 'Sign in',
                    width: 180,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        fillColor: Color(0xFF35333E),
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        fillColor: Color(0xFF35333E),
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 200.0,
                  ),
                  PurpleButton(
                    buttonText: 'Sign in',
                    width: 300,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
