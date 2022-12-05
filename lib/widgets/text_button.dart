import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton(
      {super.key,
      required this.label,
      required this.onTap,
      required this.labelColor});

  final String label;
  final Function() onTap;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
