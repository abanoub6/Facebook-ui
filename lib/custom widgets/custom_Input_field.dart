import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hint;
  final String warning;

  const CustomInputField({
    super.key,
    required this.hint,
    this.warning = "this field is required",
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return warning;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white.withValues(alpha: 0.6),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        errorStyle: TextStyle(
          color: Colors.red,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
