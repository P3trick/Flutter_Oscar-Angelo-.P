class MakananModel {
  String gambarMakanan;
  String deskripsiMakanan;
  double ratingMakanan;
  int reviewMakanan;
  String namaMakanan;
  String hargaMakanan;

  //ini constructor agar dapat langsung diisi saat membuat object.
  MakananModel({
    required this.gambarMakanan,
    required this.deskripsiMakanan,
    required this.ratingMakanan,
    required this.reviewMakanan,
    required this.namaMakanan,
    required this.hargaMakanan,
  });
}
