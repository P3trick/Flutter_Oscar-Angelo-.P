import 'package:flutter/material.dart';
import 'package:project_flutter/component/costum_text.dart';
import 'package:project_flutter/component/custom_button_text.dart';
import 'package:project_flutter/component/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController txtUsername = TextEditingController();
    final TextEditingController txtPassword = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomText(
                    text: "English (US)",
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 16),
                ],
              ),

              const SizedBox(height: 50),

              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkLMdiWV7KQOhxvEshOBiqJcCagE3PcRfYLkdAc6RxTw&s=10',
                height: 60,
              ),

              const SizedBox(height: 30),

              CustomTextField(
                txtController: txtUsername,
                hint: "Username, email or mobile number",
              ),

              const SizedBox(height: 10),

              CustomTextField(
                txtController: txtPassword,
                hint: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 16),

              const CustomButtonText(
                text: "Log in",
              ),

              const SizedBox(height: 16),

              const CustomText(
                text: "Forgot password?",
                fontWeight: FontWeight.w500,
              ),

              const Spacer(),

              const CustomButtonText(
                text: "Create new account",
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.all_inclusive, color: Colors.grey, size: 18),
                  SizedBox(width: 4),
                  CustomText(
                    text: "Meta",
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}