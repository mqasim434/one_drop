import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/blackButton.dart';
import 'package:one_drop/screens/singnIn.dart';

class SiginOptions extends StatelessWidget {
  const SiginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1F1E26),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "Images/OneDrop_Logo.png",
                      width: 90,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Sign In with:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    BlackButton(
                      buttonText: 'Sign In with Apple',
                      buttonIcon: Icons.apple,
                      width: 300,
                      onPress: (){
                        print('HELLO');
                      },
                    ),
                    BlackButton(
                      buttonText: 'Email',
                      buttonIcon: Icons.email,
                      width: 300,
                      onPress: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },
                    ),
                    BlackButton(
                      buttonText: 'Facebook',
                      buttonIcon: Icons.facebook,
                      width: 300,
                      onPress: (){
                        print('HELLO');
                      },
                    ),
                    BlackButton(
                      buttonText: 'Google',
                      buttonIcon: Icons.attach_email,
                      width: 300,
                      onPress: (){
                        print('HELLO');
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
