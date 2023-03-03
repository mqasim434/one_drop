import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {

  final String buttonText;
  double? width = 550;
  Function onPress;
  PurpleButton({required this.buttonText, this.width,required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress(),
      child: Container(
        width: width,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
