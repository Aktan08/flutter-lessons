import 'dart:io';

import 'package:dart_practice9/dart_practice9.dart' as dart_practice9;

first() {
  print('Введите число');
  String a = stdin.readLineSync()!;
  int day = int.parse(a);
  if (day >= 1 && day <= 11) {
    print('Первая декада');
  } else if (day >= 12 && day <= 21) {
    print('Вторая декада');
  } else if (day >= 22 && day <= 31) {
    print('Третяя декада');
  }
}

second() {
  print('Введите число');
  String a = stdin.readLineSync()!;
  int month = int.parse(a);
  if (month == 1 || month == 12 || month == 2) {
    print('Зима');
  } else if (month >= 3 && month <= 5) {
    print('Весна');
  } else if (month >= 6 && month <= 8) {
    print('Лето');
  } else if (month >= 9 && month <= 11) {
    print('Осень');
  }
}

third() {
  print('Введите строку');
  String stroka = (stdin.readLineSync()!).toLowerCase();

  if (stroka[0] == 'a') {
    print('Да');
  } else {
    print('Нет');
  }
}

forth() {
  print('Введите строку c цифрами');
  String stroka = (stdin.readLineSync()!).toLowerCase();

  if (stroka[0] == '1' || stroka[0] == '2' || stroka[0] == '3') {
    print('Да');
  } else {
    print('Нет');
  }
}

five() {
  print('Введите строку c цифрами');
  String stroka = (stdin.readLineSync()!).toLowerCase();
  if (stroka.length == 3 && int.tryParse(stroka) != null) {
    int summ =
        int.parse(stroka[0]) + int.parse(stroka[1]) + int.parse(stroka[2]);
    print(summ);
  } else {
    print('Ввели не правильно');
  }
}

six() {
  print('Введите строку c  6 цифрами ');
  String stroka = (stdin.readLineSync()!);
  if (stroka.length == 6 && int.tryParse(stroka) != null) {
    int summ1 =
        int.parse(stroka[0]) + int.parse(stroka[1]) + int.parse(stroka[2]);
    int summ2 =
        int.parse(stroka[3]) + int.parse(stroka[4]) + int.parse(stroka[5]);
    if (summ1 == summ2) {
      print('Да');
    } else {
      print('нет');
    }
  } else {
    print('Ввели не правильно');
  }
}

registrasia(Map users) {
  print('Для регистрации введите логин:');
  String login = (stdin.readLineSync()!);
  print('Для регистрации введите Пароль: ');
  String password = (stdin.readLineSync()!);
  users.addAll({login: password});
  print('вы зарегистрировались');
  signin(users);
}

signin(Map users) {
  print('Для входа  введите логин: ');
  String login = (stdin.readLineSync()!);
  print('Для входа  введите Пароль: ');
  String password = (stdin.readLineSync()!);
  if (users.containsKey(login) == true && users[login] == password) {
    print('Вы вошли');
  } else {
    print(
        'Неверный пароль!\nВы регистрировались? если да то введите "Y" \nесли нет введите "R"для регистрации');
    String answer = (stdin.readLineSync()!).toLowerCase();
    if (answer == 'r') {
      print('Повторный ввод');
      registrasia(users);
    } else {
      signin(users);
    }
  }
}

seven() {
  Map users = {'Aktan': 'qwerty', 'Tilek': "1234"};
  signin(users);
}

int summ = 0;
int counter = 0;
eith() {
  print('Введите число: ');
  String num = (stdin.readLineSync()!);
  int? numbe = int.tryParse(num);
  if (numbe != null) {
    int number = int.parse(num);
    if (number != 0) {
      summ += number;
      counter += 1;
      eith();
    } else if (number == 0) {
      print('Вы ввели: $counter раз');
      print('Общая сумма: $summ ');
      double srednee = summ / counter;
      print('Cреднее арифметическое: $srednee');
    }
  } else {
    print('Ввели не правильно');
  }
}

nine() {
  print('Введите диапазон');
  print('Начало: ');
  String num = (stdin.readLineSync()!);
  int a = int.parse(num);
  print('Конец: ');
  String num1 = (stdin.readLineSync()!);
  int b = int.parse(num1);
  if (a < b) {
    int summ = 0;
    do {
      if (a % 2 == 0) {
        summ += a;
      }
      a++;
    } while (a <= b);
    print('Cумма всех нечетный чисел: $summ');
  }
}

void main() {
  // Седьмое задание так будет логчинее
  print('Седьмое задание');
  seven();
  //Первое задание
  print('\nПервое задание');
  first();
  //Второе задание
  print('\nВторое задание');
  second();
  //Третее задание
  print('\nТретее задание');
  third();
  //четвертое задание
  print('\nЧетвертое задание');
  forth();
  //Пятое задание
  print('\nПятое задание');
  five();
  //Шестое задание
  print('\nШестое задание');
  six();
  //Восьмое задание
  print('\nВосмьое задание');
  eith();
  //Девятое задание
  print('\nДевятое задание');
  nine();
}
