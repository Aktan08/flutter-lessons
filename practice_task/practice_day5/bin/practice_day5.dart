import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:practice_day5/practice_day5.dart' as practice_day5;
import 'package:test/scaffolding.dart';

kinutKosti(num, a, b) {
  if (num == 'y') {
    List kostchki = [
      ' ---\n|   |\n| * |\n|   |\n ___',
      ' ---\n|   |\n| * |\n| * |\n ___',
      ' ---\n| * |\n| * |\n| * |\n ___',
      ' ---\n|* *|\n|   |\n|* *|\n ___',
      ' ---\n|* *|\n| * |\n|* *|\n ___',
      ' ---\n|* *|\n|* *|\n|* *|\n ___'
    ];

    return "${kostchki[a]}\n${kostchki[b]}";
  } else {
    print(
        'Ошибка вы не Ввели "y" Введите заново: ${num = stdin.readLineSync()}');
  }
}

void main() {
  int kosti = Random().nextInt(6);
  int kosti1 = Random().nextInt(6);
  int kosti2 = Random().nextInt(6);
  int kosti3 = Random().nextInt(6);
  int kosti4 = Random().nextInt(6);
  int kosti5 = Random().nextInt(6);
  int kosti6 = Random().nextInt(6);
  int kosti7 = Random().nextInt(6);
  int kosti8 = Random().nextInt(6);
  int kosti9 = Random().nextInt(6);
  int kosti10 = Random().nextInt(6);
  int kosti11 = Random().nextInt(6);
  print('!!!игра началась!!!');
  print('Введите чтобы комьютер бросил камень "y"');
  String? raz1 = stdin.readLineSync();
  var first = kinutKosti(raz1, kosti, kosti1);
  print('бросок компьютера: \n${first}');

  print('Введите чтобы вы бросили камень "y"');
  String? raz2 = stdin.readLineSync();
  var first1 = kinutKosti(raz2, kosti2, kosti3);
  print('Ваш бросок: \n${first1}');

  print('Введите чтобы комьютер бросил камень "y"');
  String? raz3 = stdin.readLineSync();
  var first2 = kinutKosti(raz1, kosti4, kosti5);
  print('бросок компьютера: \n${first2}');

  print('Введите чтобы вы бросили камень "y"');
  String? raz4 = stdin.readLineSync();
  var first3 = kinutKosti(raz2, kosti6, kosti7);
  print('Ваш бросок: \n${first1}');

  print('Введите чтобы комьютер бросил камень "y"');
  String? raz5 = stdin.readLineSync();
  var first4 = kinutKosti(raz1, kosti8, kosti9);
  print('бросок компьютера: \n${first}');

  print('Введите чтобы вы бросили камень "y"');
  String? raz6 = stdin.readLineSync();
  var first5 = kinutKosti(raz2, kosti10, kosti11);
  print('Ваш бросок: \n${first5}');
  var result = kosti + kosti1 + kosti4 + kosti5 + kosti8 + kosti9 + 6;
  var result2 = kosti2 + kosti3 + kosti6 + kosti7 + kosti10 + kosti11 + 6;
  if (result > result2) {
    print("Компьютер выйграл !!! результат: $result ");
    print("Ваш результат: $result2 ");
  } else
    print("Вы выйграли !!! результат: $result2 ");
  print("результат компьютера: $result");
}
