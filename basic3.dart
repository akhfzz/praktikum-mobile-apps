//this keyword
class Mobil {
  String nama;
  Mobil(this.nama) {
    this.nama = nama;
    print(nama);
  }
}

// accessor and mutators
class Mahasiswa {
  late String nama;
  late int angkatan;

  String get data_nama {
    return nama;
  }

  set data_nama(String nama) {
    this.nama = nama;
  }

  int get data_angkatan {
    return angkatan;
  }

  set data_angkatan(int angkatan) {
    if (angkatan < 2018) {
      print('Angkatan ini sudah selesai');
    } else {
      this.angkatan = angkatan;
    }
  }
}

void main() {
  // this keyword
  Mobil m = new Mobil('Innova');
  // accessor and mutators
  Mahasiswa dm = new Mahasiswa();
  dm.data_nama = 'izal';
  dm.data_angkatan = 2019;
  print(dm.data_nama);
  print(dm.data_angkatan);
}
