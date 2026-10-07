import "package:get/get.dart";
import "package:project_flutter/models/detail_makanan_model.dart";

class DetailMakananController extends GetxController {
  // kita buat data-datanya disini
  List<DetailMakananModel> detailMakanan = [
    DetailMakananModel(
      gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg",
      deskripsiMakanan: "Soto ayam dengan kuah yang lezat dan bahan-bahan segar.",
      ratingMakanan: 4.5,
      reviewMakanan: 120,
    ),
    DetailMakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnY_vWaNDRkkqnz3H1IP84detEl2sBKNr_chXin3Rx4K7wZ5YIdResrt-K&s=10",
      deskripsiMakanan: "Lentog adalah makanan khas yang terbuat dari daging sapi dan bahan-bahan lainnya.",
      ratingMakanan: 4.2,
      reviewMakanan: 95,
    ),
    DetailMakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx_XP3KIIaL2EWZTJiGMWUm4QrXu5_kDyp-BawZNsXGMXukvNMtMr-GUcE&s=10",
      deskripsiMakanan: "Pindang kerbau dengan rasa yang khas dan bahan-bahan berkualitas.",
      ratingMakanan: 4.7,
      reviewMakanan: 150,
    ),
    DetailMakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10",
      deskripsiMakanan: "Jenang adalah makanan tradisional yang terbuat dari beras dan gula.",
      ratingMakanan: 4.0,
      reviewMakanan: 80,
    ),
    DetailMakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJKePZgkk1dNd2Fiy8UfT-2BUdS86BMlGS5hwf57598RWbG3jT5yd_1cc&s=10",
      deskripsiMakanan: "Bolang baling adalah makanan ringan yang terbuat dari tepung dan gula.",
      ratingMakanan: 3.8,
      reviewMakanan: 60,
    ),
  ];
}