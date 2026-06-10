class Catatan {
  final int? id;
  final String judul;
  final String isi;
  final String kategori;
  final String email;
  final DateTime dibuatPada;

  Catatan({
    this.id,
    required this.judul,
    required this.isi,
    required this.kategori,
    required this.email,
    required this.dibuatPada,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'judul': judul,
      'isi': isi,
      'kategori': kategori,
      'email': email,
      'dibuatPada': dibuatPada.toIso8601String(),
    };
  }

  factory Catatan.fromMap(Map<String, dynamic> map) {
    return Catatan(
      id: map['id'],
      judul: map['judul'],
      isi: map['isi'],
      kategori: map['kategori'],
      email: map['email'],
      dibuatPada: DateTime.parse(map['dibuatPada']),
    );
  }
}
