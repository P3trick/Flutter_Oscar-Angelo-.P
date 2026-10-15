import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/confirmreg_controller.dart';
import 'package:project_flutter/routes.dart';

class ConfirmregPage extends StatelessWidget {
  ConfirmregPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("Confirm Registration")),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nama : ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Text(
            "Email : ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Text(
            "Nomor WA : ${controller.nowa}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Text(
            "Alamat : ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Row(
            children: [
              Container(
                width: 410,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.listmakanan);
                  },
                  child: Text("Next (list_makanan)"),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}