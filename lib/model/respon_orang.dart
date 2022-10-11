class ResponOrang {
  ResponOrang({
    this.orang,
  });

  ResponOrang.fromJson(dynamic json) {
    if (json['orang'] != null) {
      orang = [];
      json['orang'].forEach((v) {
        orang?.add(Orang.fromJson(v));
      });
    }
  }

  List<Orang>? orang;

  ResponOrang copyWith({
    List<Orang>? orang,
  }) =>
      ResponOrang(
        orang: orang ?? this.orang,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (orang != null) {
      map['orang'] = orang?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Orang {
  Orang({
    this.nama,
    this.photo,
    this.tanggalLahir,
    this.usia,
  });

  Orang.fromJson(dynamic json) {
    nama = json['nama'];
    photo = json['photo'];
    tanggalLahir = json['tanggalLahir'];
    usia = json['usia'];
  }

  String? nama;
  String? photo;
  String? tanggalLahir;
  int? usia;

  Orang copyWith({
    String? nama,
    String? photo,
    String? tanggalLahir,
    int? usia,
  }) =>
      Orang(
        nama: nama ?? this.nama,
        photo: photo ?? this.photo,
        tanggalLahir: tanggalLahir ?? this.tanggalLahir,
        usia: usia ?? this.usia,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nama'] = nama;
    map['photo'] = photo;
    map['tanggalLahir'] = tanggalLahir;
    map['usia'] = usia;
    return map;
  }
}
