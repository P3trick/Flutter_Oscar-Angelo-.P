import 'package:flutter/material.dart';
import 'package:project_flutter/component/custom_button.dart';
import 'package:project_flutter/component/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statusLogin = "";

    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Column(
        children: [

          Text(
            "Welcome to Application " + statusLogin.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              txtController: txtUsername,
              hint: "input Username",
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              txtController: txtPassword,
              hint: "input Password",
              obscureText: true,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Login",
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;

                    if (username == "admin" && password == "admin") {
                      print("Login Berhasil");
                      statusLogin = "Admin";
                      //Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      print("Login Gagal");
                      statusLogin = "Failed";
                      //ScaffoldMessenger.of(context).showSnackBar(
                      //  SnackBar(content: Text("Username atau Password Salah"))
                      //);
                    }
                  });
                },
              ),

              const SizedBox(width: 10),

              CustomButton(
                text: "Register",
                onPressed: () {
                },
              ),
            ],
          ),

        ],
      )
    );
  }
}