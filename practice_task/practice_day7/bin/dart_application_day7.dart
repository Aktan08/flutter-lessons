import 'dart:developer';
import 'dart:io';

import 'package:dart_application_day7/dart_application_day7.dart'
    as dart_application_day7;

first() {
  for (int i = 10; i <= 20; i++) {
    print(i * i);
  }
}

second(number) {
  List<int> count = [];
  int counter = 0;
  for (int i = 1; i <= number; i++) {
    count.add(i);
  }
  for (int i = 1; i < count.length; i++) {
    counter += count[i];
  }
  return counter;
}

third(double summa, double year) {
  double counter = 0;
  for (int i = 1; i <= year; i++) {
    counter += summa + (summa * 0.003) * year as double;
  }
  return counter;
}

forth() {
  for (int i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      print(i);
    }
  }
}

fivs() {
  int counter = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      counter += i;
    }
  }
  return counter;
}

six() {
  for (int i = 10; i <= 99; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      print(i);
    }
  }
}

seven() {
  int counter = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0 && i % 17 == 0) {
      counter += i;
    }
  }
  return counter;
}

eith(number) {
  int counter = 0;
  for (int i = 1; i <= number; i++) {
    counter += i * i;
  }
  return counter;
}

void main() {
  print('Первое задание: ');
  //Первое задание
  first();

  //Второе задание
  print('Второе задание Введите число: ');
  String a = stdin.readLineSync()!;
  int b = int.parse(a);
  print(second(b));

  // Третее задание
  print('Третее задание какую сумму хотите положить: ');
  String c = stdin.readLineSync()!;
  int d = int.parse(c);
  print('Третее задание Введите на сколько лет: ');
  String n = stdin.readLineSync()!;
  int let = int.parse(n);
  print(third(d.toDouble(), let.toDouble()));

  // Четвертое задание
  print('Четвертое задание:');
  forth();

  // Пятое задание
  print('Пятое задание');
  print(fivs());

  // шестое задание
  print('Шестое задание');
  six();

  // седьмое задание
  print('Седьмое задание');
  print(seven());

  // восьмое задание
  print('восьмое задание');
  print('Введите число: ');
  String p = stdin.readLineSync()!;
  int g = int.parse(p);
  print(eith(g));
}
