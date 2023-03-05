import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_drop/custom_widgets/Buttons/purpleButton.dart';
import 'package:one_drop/custom_widgets/bottomProgressBar.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:one_drop/screens/importYourData.dart';

class DateOfBirth extends StatefulWidget {
  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  DateTime? datePicked;

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
                    'When were you born?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Knowing our age will help us \npersonalize your experience.',
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
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BottomPicker.date(
                    title: "",
                    backgroundColor: const Color(0xFF1F1E26),
                    titleStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 0,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    pickerTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                    displayCloseIcon: false,
                    displaySubmitButton: false,
                    dateOrder: DatePickerDateOrder.dmy,
                    onChange: (date) {
                      setState(() {
                        datePicked = date;
                      });
                    },
                  ),
                  Text(
                    datePicked!=null?
                    "${datePicked!.day.toString()} - ${datePicked!.month.toString()} - ${datePicked!.year.toString()}":"",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
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
                          builder: (context) => const ImportYourData(),
                        ),
                      );
                    },
                  ),
                  BottomProgressBar(progressWidth: 280),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
