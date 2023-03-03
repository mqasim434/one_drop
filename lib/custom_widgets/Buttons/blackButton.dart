import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String buttonText;
  double? width = 550;
  IconData? buttonIcon;
  Function onPress;

  BlackButton({
    required this.buttonText,
    this.buttonIcon,
    this.width,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress(),
      child: Container(
        width: width,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                buttonIcon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
