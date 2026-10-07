import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/routes.dart';
import 'package:project_flutter/components/custom_textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNowa = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();

    return Scaffold(

      appBar: AppBar(title: Text("Registration Page")),
      body: Column(

        children: [
          CustomTextField(
            txtController: txtNama, 
            hint: "input name"
          ),

          CustomTextField(
            txtController: txtEmail, 
            hint: "input email"
          ),

          CustomTextField(
            txtController: txtNowa, 
            hint: "input nomor wa"
          ),

          CustomTextField(
            txtController: txtAlamat, 
            hint: "input alamat"
          ),
          ElevatedButton(

            onPressed: () {
              // get to untuk pindah
              // argument untuk kirim data
              // get off
              Get.toNamed(
                routes.confirmreg,
                arguments: {
                  'name': txtNama.text.toString(),
                  'email': txtEmail.text.toString(),
                  'nowa': txtNowa.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                },
              );
            },
            child: Text("Send"),

          ),

        ],
      ),
    );
  }
}