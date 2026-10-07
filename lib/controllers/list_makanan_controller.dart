import "package:get/get.dart";
import "package:project_flutter/models/makanan_model.dart";

class ListMakananController extends GetxController {
  // kita buat data-datanya disini
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
    ),
    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "80.000",
    ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "20.000",
    ),
    MakananModel(
      namaMakanan: "Jenang",
      hargaMakanan: "15.000",
    ),
    MakananModel(
      namaMakanan: "Bolang Baling",
      hargaMakanan: "5.000",
    ),
  ];
}