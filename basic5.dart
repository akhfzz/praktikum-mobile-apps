class Collage {
  late String nama;
  late int nim;

  initialFunc(String nama, int nim) {
    this.nama = nama;
    this.nim = nim;
  }

  showStudent() {
    print("mahasiswa ini namanya $nama nim $nim");
    print("execute");
  }
}

class Student extends Collage {
  initialFunc(String nama, int nim) {
    this.nama = nama;
    this.nim = nim;
  }

  showStudent() {
    super
        .showStudent(); //untuk memanggil super class dengan method override nya
    print("mahasiswa ini namanya $nama nim $nim");
    print("exec2");
  }

  static methodStatic() {
    print("ini function static");
  }
}

main() {
  // Collage obj = new Collage();
  // obj.initialFunc('faizal', 192102002);
  // obj.showStudent();

  Student obj2 = new Student();
  obj2.initialFunc('rehan', 192102023);
  obj2.showStudent();
  Student.methodStatic();
}
