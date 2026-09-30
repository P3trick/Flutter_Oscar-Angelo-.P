import 'package:flutter/material.dart';

class CustomButtonText extends StatelessWidget {
  final String text;
  final bool isPrimary;

  const CustomButtonText({
    super.key,
    required this.text,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isPrimary ? const Color(0xFF0064E0) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: isPrimary ? null : Border.all(color: const Color(0xFF0064E0)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isPrimary ? Colors.white : const Color(0xFF0064E0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}