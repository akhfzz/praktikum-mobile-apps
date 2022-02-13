import 'dart:io';
import 'dart1.dart';

void main() {
  print('Masukkan inputnya: ');
  String? text = stdin.readLineSync();
  print('Hasil:  ' + revWords('$text'));
}
