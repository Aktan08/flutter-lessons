import 'dart:io';

import 'package:dart_application_day8/dart_application_day8.dart'
    as dart_application_day8;

first(double summa, double year, double procent) {
  double counter = summa + (summa * (procent / 100)) * year as double;
  return counter;
}

calculate() {
  print("Выберите действие которое хотите сделать:\n"
      "Сложить: +\n"
      "Вычесть: -\n"
      "Умножить: *\n"
      "Поделить: /\n"
      "Выйти: q\n");
  print('Действие: ');
  String action = stdin.readLineSync()!;
  do {
    if (action == "q") {
      print('Выходим из программы');
      break;
    } else if (action == '+' ||
        action == '-' ||
        action == '*' ||
        action == '/') {
      print('Введите первое число:');
      String x = stdin.readLineSync()!;
      int a = int.parse(x);
      print('Введите второе число:');
      String y = stdin.readLineSync()!;
      int b = int.parse(y);
      if (action == '+') {
        int result = a + b;
        print('$a + $b = $result');
        print('чтобы решить еще введите "n"');
        String n = stdin.readLineSync()!;
        if (n == 'n') {
          calculate();
        }
      }
      if (action == '-') {
        int result = a - b;
        print('$a - $b = $result');
        print('чтобы решить еще введите "n"');
        String n = stdin.readLineSync()!;
        if (n == 'n') {
          calculate();
        }
      }
      if (action == '/') {
        if (b != 0) {
          print('Деление на ноль');
          double result = a / b;
          print('$a / $b = $result');
          print('чтобы решить еще введите "n"');
          String n = stdin.readLineSync()!;
          if (n == 'n') {
            calculate();
          }
        }
        print('Деление на ноль');
        print('чтобы решить еще введите "n"');
        String n = stdin.readLineSync()!;
        if (n == 'n') {
          calculate();
        }
      }
      if (action == '*') {
        int result = a - b;
        print('$a - $b = $result');
        print('чтобы решить еще введите "n"');
        String n = stdin.readLineSync()!;
        if (n == 'n') {
          calculate();
        }
      }
    }
  } while (action == "q");
}

convert() {
  print('продать или купить? если продать введите "sell" если купить  "buy"');
  String action = stdin.readLineSync()!;
  print("Выберите валюту: 'USD','EURO','KZT','RUB'");
  String wichOne = stdin.readLineSync()!;
  print("Сумма операции :");
  String sum = stdin.readLineSync()!;
  int summa = int.parse(sum);

  Map buycash = {'USD': 85.00, 'EURO': 90.80, 'KZT': 0.12, 'RUB': 1.34};
  Map sellcash = {'USD': 86.00, 'EURO': 91.80, 'KZT': 0.19, 'RUB': 1.38};
  if (action == 'buy') {
    if (wichOne == 'USD' ||
        wichOne == 'EURO' ||
        wichOne == 'KZT' ||
        wichOne == 'RUB') {
      if (wichOne == 'USD') {
        print('У вас теперь USD: ${summa / sellcash['USD']}');
      }
      if (wichOne == 'RUB') {
        print('У вас теперь RUB: ${summa / sellcash['RUB']}');
      }
      if (wichOne == 'EURO') {
        print('У вас теперь EURO: ${summa / sellcash['EURO']}');
      }
      if (wichOne == 'KZT') {
        print('У вас теперь KZT: ${summa / sellcash['KZT']}');
      }
      print('Вы  выбрали неправильно');
      print('Введите сначала');
      convert();
    }
  }
  if (action == 'sell') {
    if (wichOne == 'USD' ||
        wichOne == 'EURO' ||
        wichOne == 'KZT' ||
        wichOne == 'RUB') {
      if (wichOne == 'USD') {
        print('У вас теперь USD: ${summa * buycash['USD']}');
      } else if (wichOne == 'EURO') {
        print('У вас теперь EURO: ${summa * buycash['EURO']}');
      } else if (wichOne == 'RUB') {
        print('У вас теперь RUB: ${summa * buycash['RUB']}');
      } else if (wichOne == 'KZT') {
        print('У вас теперь KZT: ${summa * buycash['KZT']}');
      } else {
        print('не правильная операция');
        print('Введите сначала');
        convert();
      }
    }
  }
}

void main() {
  // Первое задание
  print('Первое задание ');
  print('какую сумму хотите положить: ');
  String c = stdin.readLineSync()!;
  int d = int.parse(c);
  print('Третее задание Введите на сколько лет: ');
  String n = stdin.readLineSync()!;
  int let = int.parse(n);
  print('какой процент: ');
  String proc = stdin.readLineSync()!;
  int p = int.parse(proc);
  double result = first(d.toDouble(), let.toDouble(), p.toDouble());
  print('Доход: ${result - p}\nОбщая сумма: $result');

  //Калькулятор
  print("калькулятор");
  calculate();

  // Convert
  convert();
}
