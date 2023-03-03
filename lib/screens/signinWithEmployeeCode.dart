import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';

class SignInWithEmployeeCode extends StatelessWidget {
  const SignInWithEmployeeCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1F1E26),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "Images/OneDrop_Logo.png",
                      width: 90,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Use Your Employee Code',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Employee Code",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          fillColor: Color(0xFF35333E),
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Text(
                      'Your Employee code is the firs word of your company, followed'
                      ' by \' -onedrop \' \(i.e. For \" ABCD EFGH Corporation \",'
                      'you would type in \"abc-onedrop\" \). ',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      'Are you having trouble findimg\nthe code?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Contact us',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                )),
                PurpleButton(
                  buttonText: 'Continue',
                  onPress: () {
                    print('HELLO');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
