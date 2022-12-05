import 'package:flutter/material.dart';
import 'package:login_page/provider/my_provider.dart';
import 'package:provider/provider.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.hintText,
      required this.borderColor,
      required this.fillColor,
      required this.hintColor,
      this.password = false});
  final String hintText;
  final Color borderColor;
  final Color fillColor;
  final Color hintColor;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        enabled: true,
        obscureText: Provider.of<MyProvider>(context).passwordS,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: borderColor, width: 1.5)),
            fillColor: fillColor,
            filled: true,
            suffixIcon: password
                ? IconButton(
                    onPressed: () {
                      Provider.of<MyProvider>(context, listen: false)
                          .changeSecreText();
                    },
                    icon: Provider.of<MyProvider>(context).passwordS
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  )
                : null),
      ),
    );
  }
}
