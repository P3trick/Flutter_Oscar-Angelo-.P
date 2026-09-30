import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final TextEditingController txtController;
  final String hint;
  final TextStyle? style;
  final Color? color;
  final bool obscureText;
  
  const CustomTextField({
      super.key, 
      required this.txtController, 
      required this.hint,
      this.style,
      this.color,
      this.obscureText = false,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)),
        hint: Text(hint),
      ),
    );
  }
}