class Superclass {
  // String nama;
  Superclass() {
    // this.nama = nama;
    print("ini dari superclass");
  }
}

class Subclass extends Superclass {
  String nama;
  Subclass(this.nama) {
    this.nama = nama;
    print("ini adalah $nama dari subclass");
  }
  display() {
    print("Welcome to super contruktor");
  }
}

void main() {
  print("Dart Implicit Superclass constructor call");
  // We create a object of sub class which will invoke subclass constructor.
  // as well as parent class constructor.
  Subclass s = new Subclass('izal');
  // Calling sub class method
  s.display();
}
