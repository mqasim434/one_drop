import 'package:flutter/material.dart';

class CheckBoxTile extends StatefulWidget {
  String title = "no title";
  bool isRounded = false;

  CheckBoxTile({super.key, required this.title, required this.isRounded});
  @override
  State<CheckBoxTile> createState() => _CheckBoxTileState(isRounded: isRounded);
}

class _CheckBoxTileState extends State<CheckBoxTile> {
  bool isChecked = false;
  bool isRounded = false;
  _CheckBoxTileState({required this.isRounded});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: isRounded!
                    ? BorderRadius.circular(20.0)
                    : BorderRadius.circular(5.0),
                border: Border.all(
                  color: !isChecked
                      ? Colors.white54
                      : Colors.transparent,
                ),
                color: isChecked ? Colors.deepPurple : Colors.transparent,
              ),
              child: isChecked
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
