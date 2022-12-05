import 'package:flutter/material.dart';

class TextWithCircle extends StatelessWidget {
  const TextWithCircle({
    Key? key,
    required this.label,
    required this.onPress,
    required this.labelColor,
  }) : super(key: key);

  final String label;
  final Function() onPress;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 35, color: labelColor),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xff4c505b),
          child: IconButton(
              onPressed: onPress,
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
