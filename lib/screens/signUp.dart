import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/screens/singnIn.dart';
import 'package:one_drop/screens/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1F1E26),
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Image.asset(
                          "Images/OneDrop_Logo.png",
                          width: 90,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PurpleButton(
                              buttonText: "Register",
                              width: 170,
                              onPress: () {
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 50),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 3,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "First Name",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            fillColor: Color(0xFF35333E),
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 3,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            fillColor: Color(0xFF35333E),
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "E-Mail Address",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            fillColor: Color(0xFF35333E),
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 3,
                        ),
                        child: TextField(
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
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 3.0,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            fillColor: Color(0xFF35333E),
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: PurpleButton(
                    buttonText: 'Create Account',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                      );
                    },
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
