import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/confirmreg_controller.dart';

class ConfirmregPage extends StatelessWidget {
  ConfirmregPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("Confirm Registration")),

      body: Column(

        children: [

          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          Text(
            "Email ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          Text(
            "Nomor WA ${controller.nowa}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          Text(
            "Alamat ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Oke"),
          ),

        ],

      ),
      
    );
  }
}