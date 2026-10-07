class DetailMakananModel {
  String gambarMakanan;
  String deskripsiMakanan;
  double ratingMakanan;
  int reviewMakanan;


  //ini constructor agar dapat langsung diisi saat membuat object.
  DetailMakananModel({
    required this.gambarMakanan,
    required this.deskripsiMakanan,
    required this.ratingMakanan,
    required this.reviewMakanan,
  });
}