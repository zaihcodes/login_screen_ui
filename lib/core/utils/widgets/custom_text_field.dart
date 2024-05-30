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
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1, color: Theme.of(context).colorScheme.primary)),
        // Border.all(width: 1, color: Theme.of(context).colorScheme.primary),
        // borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            onChanged: func,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(icon),
              border: InputBorder.none,
            ),
            obscureText: type == 'password' ? true : false,
          ),
        ],
      ),
    );
  }
}
