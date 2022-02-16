import 'dart:collection';

enum Angka {
  halo,
  hai,
  nona,
}
void main() {
  var qwe = new Queue();
  qwe.add(3);
  qwe.add(4);
  print(qwe);
  print(Angka.values);
  Runes input = new Runes(' \u{1f605} ');
  print(new String.fromCharCodes(input));
}
