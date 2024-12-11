import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String? value)? validator;

  const AuthTextFieldWidget({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Material(
        elevation: 3,
        shadowColor: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey)),
            fillColor: Colors.grey,
            filled: false,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
