import 'dart:core';
import 'dart:mirrors';
import 'basic2.dart';

void main() {
  var animal = new Symbol('Animal');
  var hewan = new Symbol('Hewan');
  class_isfound(animal, hewan); //library, classname
}

class_isfound(Symbol library, Symbol clsName) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(library);
  if (libraryMirror != null) {
    print("Library ditemukan");
    print(
        "Check library yang ditemukan adalah: ${libraryMirror.declarations.length}");
    libraryMirror.declarations.forEach((k, v) {
      print(v);
    });
    if (libraryMirror.declarations.containsKey(clsName)) return true;
    return false;
    // ClassMirror classMirror = libraryMirror.declarations[clsName];
    // print("bukan metode instance: ${classMirror.instanceMembers.length}");
    // classMirror.instanceMembers.forEach((k, v) {
    //   print(k);
    // });
  }
}
