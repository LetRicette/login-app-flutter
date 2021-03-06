import 'dart:ui';

import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String label;
  final String? Function(String? value)? validator;
  final ValueChanged<String>? onChange;
  final bool obscureText;

  const InputTextWidget({
    Key? key,
    this.controller,
    this.textInputType = TextInputType.text,
    required this.label,
    required this.validator,
    required this.onChange,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChange,
      validator: validator,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.pink,
          fontSize: 16,
        ),
        errorStyle: TextStyle(fontSize: 15, color: Colors.white),
        labelText: label,
        filled: true,
        fillColor: Colors.white38,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.pink.shade200,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.white54,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
