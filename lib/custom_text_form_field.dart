import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final TextInputType? inputType;
  final bool isPassword;
  final TextEditingController controller ;

  const CustomFormField({
    super.key,
    required this.label,
    this.inputType,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 25),
        alignment: Alignment.center,
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 3),
                blurRadius: 3,
                spreadRadius: 2),
          ],
        ),
        child: TextField(
          obscureText: isPassword,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            hintStyle: const TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
