// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomFormButton extends StatelessWidget {
  const CustomFormButton({
    super.key,
    required this.text,
    this.func,
  });
  final String text;
  final Function()? func;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: theme.colorScheme.onPrimary),
          ),
        ),
      ),
    );
  }
}
