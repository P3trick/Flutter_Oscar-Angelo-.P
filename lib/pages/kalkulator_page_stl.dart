import 'package:flutter/material.dart';
import '../component/custom_textfield.dart';
import '../controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPageStl extends StatelessWidget {
  KalkulatorPageStl({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {

  TextEditingController txtAngka1 = TextEditingController();
  TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(""),),
      body: Column(
        children: [
          
          Text(
            "KALKULATOR",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: CustomTextField(
                    txtController: txtAngka1,
                    hint: "input Angka 1", style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: CustomTextField(
                    txtController: txtAngka2,
                    hint: "input Angka 2", style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  // panggil method tambah di controller
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
                child: Text("Tambah", style: TextStyle(color: Colors.black),),
              ),

              ElevatedButton(
                onPressed: () {
                  // panggil method tambah di controller
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
                child: Text("Kurang", style: TextStyle(color: Colors.black),),
              ),

              ElevatedButton(
                onPressed: () {
                  // panggil method tambah di controller
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
                child: Text("Kali", style: TextStyle(color: Colors.black)),
              ),

              ElevatedButton(
                onPressed: () {
                  // panggil method tambah di controller
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
                child: Text("Bagi", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        
          Obx(
                () => Text(
                  controller.hasil.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red), //untuk warna background button
            onPressed: () {
              txtAngka1.clear();
              txtAngka2.clear();
              controller.hasil.value = 0;
            },
          child: Text("Reset", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),),
        ],
      ),
    );
  }
}