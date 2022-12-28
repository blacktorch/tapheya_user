import 'package:flutter/material.dart';
import 'constants.dart';

class Button extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback pressed;

  const Button(
      {Key? key,
      this.title = 'Press me!',
      required this.pressed,
      this.backgroundColor = kPrimary,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: kDarkButton1,
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size.fromHeight(56),
      ),
      onPressed: pressed,
    );
  }
}
