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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.network(
              controller.gambarMakanan,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            
            Text(
              controller.namaMakanan,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            Text(
              controller.deskripsiMakanan,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            
            Text(
              "Harga: ${controller.hargaMakanan}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            
            Row(
              children: [
                const Text("Rating: "),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  "${controller.ratingMakanan}",
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  " | ${controller.reviewMakanan} reviews",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}