import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/list_makanan_controller.dart';
import 'package:project_flutter/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10), 
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(routes.detailmakanan);
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.hargaMakanan),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }
        )
      ),
    );
  }
}