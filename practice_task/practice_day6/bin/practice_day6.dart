import 'package:practice_day6/practice_day6.dart' as practice_day6;

first() {
  for (int i = 0; i < 6; i++) {
    print(i);
  }
}

second() {
  for (int i = 5; i > 0; i--) {
    print(i);
  }
}

third() {
  List list = [];
  for (int i = 3; i > 0; i--) {
    for (int j = 3; j > 0; j--) {
      list.add(('${i * j}\n'));
    }
  }
  print(list.getRange(0, list.length));
}

forth(int a) {
  int counter = 0;
  for (int i = a; i > 0; i--) {
    print(a--);
  }
}

void main() {
  //Первое задание
  print('Первое задание');
  first();
  //Второе задание
  print('Второе задание');
  second();
  //Третее задание
  print('Третее задание');
  third();
  //Четвертое  задание
  print('Четвертое задание');
  forth(12);
}
