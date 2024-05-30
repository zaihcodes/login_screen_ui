import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.text,
      this.hintText,
      this.type = 'text',
      required this.icon,
      required this.func,
      super.key});
  final String text;
  final String? hintText;
  final String type;
  final IconData icon;
  final Function(String) func;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: func,
      decoration: InputDecoration(
        labelText: text,
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
      obscureText: type == 'password' ? true : false,
    );
  }
}
