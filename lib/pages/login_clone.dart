import 'package:flutter/material.dart';

class LoginClone extends StatelessWidget {
  const LoginClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121B22), // Warna background gelap
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              
              // 1. Teks Bahasa di paling atas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "English (US)",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 16),
                ],
              ),

              const SizedBox(height: 60),

              // 2. Logo Instagram
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkLMdiWV7KQOhxvEshOBiqJcCagE3PcRfYLkdAc6RxTw&s=10',
                height: 70,
                
              ),

              const SizedBox(height: 40),

              // 3. Input Username / Email
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Username, email or mobile number",
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: const Color(0xFF1E2B36),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // 4. Input Password
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: TextField(
                  obscureText: true, // Untuk menyembunyikan karakter password
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: const Color(0xFF1E2B36),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // 5. Tombol Log In
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0064E0), // Warna biru Instagram
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 6. Teks Forgot password?
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Spacer(), // Mendorong widget di bawahnya ke posisi paling bawah

              // 7. Tombol Create new account
              SizedBox(
                width: double.infinity,
                height: 44,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF0064E0)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  onPressed: () {},
                  child:Text(
                    "Create new account",
                    style: TextStyle(color: const Color(0xFF0064E0)),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 8. Logo Meta di bagian bawah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.all_inclusive, color: Colors.grey, size: 20), // Ganti Icons.infinite ke Icons.all_inclusive
                  SizedBox(width: 4),
                  Text(
                    "Meta",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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