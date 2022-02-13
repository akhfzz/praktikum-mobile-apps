import 'dart:collection';

void main() {
  var fruit = new SplayTreeMap();

  fruit[0] = 'Banana';
  fruit[5] = 'Plum';
  fruit[6] = 'Strawberry';
  fruit[2] = 'Orange';
  fruit[3] = 'Mango';
  fruit[4] = 'Blueberry';
  fruit[1] = 'Apple';

  print(fruit);

  fruit.forEach((key, val) {
    print('{ key: $key, value: $val}');
  });

  var sortedByValue = new SplayTreeMap.from(
      fruit, (key1, key2) => fruit[key1].compareTo(fruit[key2]));
  sortedByValue.remove(1);
  print(sortedByValue);
}
