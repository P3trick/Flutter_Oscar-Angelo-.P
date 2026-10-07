import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10), 
        child: ListView.builder(
          itemCount: controller.detailMakanan.length,
          itemBuilder: (context, index) {
            final detailMakanan = controller.detailMakanan[index];
            return InkWell(
              onTap: () {
                //labubu
              },
              child: ListTile(
                title: Text(detailMakanan.deskripsiMakanan),
                leading: Image.network(detailMakanan.gambarMakanan),
                subtitle: Text("Rating: ${detailMakanan.ratingMakanan}"
                    " | Review: ${detailMakanan.reviewMakanan}"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }
        )
      ),
    );
  }
}