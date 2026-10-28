import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter/controllers/list_makanan_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
          height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
              return InkWell(
                onTap: () {},
                child: Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 200,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            makanan.namaMakanan,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Rp." + makanan.hargaMakanan,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}