class TempatWisata {
  String nama;
  String lokasi;
  String harga;
  String deskripsi;
  String jamBuka;
  String rating;
  String gambar;
  List<String> urlGambar;

  TempatWisata({
    required this.nama,
    required this.lokasi,
    required this.harga,
    required this.deskripsi,
    required this.jamBuka,
    required this.rating,
    required this.gambar,
    required this.urlGambar,
  });
}

var wisata1 = [
  TempatWisata(
    nama: 'Gubuq',
    harga: '50.000',
    jamBuka: '7:00',
    deskripsi: 'keren keren',
    rating: 'gg',
    lokasi: 'Ngawi',
    gambar: 'asset/images/farm-house.jpg',
    urlGambar: [''],
  ),
];
