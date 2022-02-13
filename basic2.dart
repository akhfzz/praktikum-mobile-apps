void main() {
  Kucing obj = new Kucing();
  obj.Golongan('Vivipar');
  Perbelanjaan dt = new Perbelanjaan();
  print(dt.dikurangi(20.3));
}

class Hewan {
  void Golongan(String n) {
    print('Ini kelas induk hewan bernama $n');
  }
}

class Kucing implements Hewan {
  void Golongan(String n) {
    print('hewan golongan ini merupakan $n');
  }
}

class Kalkulator {
  perkalian(int n) {
    return n;
  }

  pertambahan(int b) {
    return b;
  }
}

class Discount {
  dikurangi(double b) {
    return b;
  }
}

class Perbelanjaan implements Discount, Kalkulator {
  @override
  perkalian(int n) {
    return 10 * n;
  }

  @override
  pertambahan(int b) {
    return 20 + b;
  }

  @override
  dikurangi(double b) {
    return 30.0 - b;
  }
}
