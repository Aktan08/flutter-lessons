import 'dart:async';
import 'dart:io';

import 'package:practice_day14/practice_day14.dart' as practice_day14;

first() {
  //Первое задание

  print('Введите число');
  String a = stdin.readLineSync()!.toLowerCase();
  int year = int.parse(a);
  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    print('високосный год');
  } else {
    print('Обычный год');
  }
}

second() {
  //Второе задание
  print('Введите число');
  String b = stdin.readLineSync()!.toLowerCase();
  int num = int.parse(b);
  do {
    if (num % 2 == 0) {
      num = (num / 2).round();
    } else if (num % 2 != 0) {
      num = num * 3 + 1;
    }
    print(num);
  } while (num != 1);
}

third() {
  //Третее задание
  print('Введите число');
  String c = stdin.readLineSync()!.toLowerCase();
  int number = int.parse(c);
  List evenNumbers = [
    for (var i = 1; i <= number; i++)
      if (i % 2 == 0) i
  ];
  print("Четные: $evenNumbers");
  List oddNumbers = [
    for (var i = 1; i <= number; i++)
      if (i % 2 != 0) i
  ];
  print("Не четные: $oddNumbers");
}

forth() {
  //Четвертое  задание
  print('Введите число');
  String d = stdin.readLineSync()!.toLowerCase();
  int n = int.parse(d);
  int counter = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      counter += i;
    }
  }
  if (counter == n) {
    print('Cовершенное число');
  } else {
    print('Обычное число');
  }
}

five() {
  //Пятое задание
  List players = [
    'Арнау Тенас',
    'Иньяки Пенья',
    'Марк-Андре тер Стеген',
    'Алекс Бальде',
    'Алекс Валье',
    'Андреас Кристенсен',
    'Жерар Пике',
    'Жорди Альба',
    'Жюль Кунде',
    'Маркос Алонсо',
    'ональд Араухо',
    'Шади Риад',
    'Эктор Бельерин',
    'Эрик Гарсия',
    'Альваро Санс',
    'Ансу Фати',
    'Гав dmdd',
    'Ильяс Ахомаш',
    'Марк Касадо',
    'Пабло Торре',
    'Педри Рафинья',
    'Серджи Бускетс',
    'Серджи Роберто',
    'Усман Дембеле',
    'Ферран Торрес',
    'Франк Кессиэ',
    'Френки де Йонг',
    'Мемфис Депай',
    'Роберт Левандовски'
  ];
  List barselona = [];
  List realmadrid = [];

  for (int i = 0; i <= players.length; i++) {
    if (barselona.length <= 3) {
      barselona.add(Defender(firstname: players[i]));
    } else if (barselona.length <= 4) {
      barselona.add(Goalkeeper(firstname: players[i]));
    } else if (barselona.length <= 8) {
      barselona.add(Midfielder(firstname: players[i]));
    } else if (barselona.length <= 10) {
      barselona.add(Striker(firstname: players[i]));
    }
    if (realmadrid.length <= 3) {
      realmadrid.add(Defender(firstname: players[i]));
    } else if (realmadrid.length <= 4) {
      realmadrid.add(Goalkeeper(firstname: players[i]));
    } else if (realmadrid.length <= 8) {
      realmadrid.add(Midfielder(firstname: players[i]));
    } else if (realmadrid.length <= 10) {
      realmadrid.add(Striker(firstname: players[i]));
    }
  }
  print(barselona);
  print(realmadrid);
}

class FootBallPlayer {
  String firstname;
  FootBallPlayer({required this.firstname});
}

class Defender extends FootBallPlayer {
  String defender = 'Защитник';
  Defender({required super.firstname});
  @override
  String toString() {
    // TODO: implement toString
    return "$firstname - $defender";
  }
}

class Goalkeeper extends FootBallPlayer {
  String goalkeeper = 'Вратарь';
  Goalkeeper({required super.firstname});
  @override
  String toString() {
    // TODO: implement toString
    return "$firstname - $goalkeeper";
  }
}

class Midfielder extends FootBallPlayer {
  String midfielder = 'полузащитник';
  Midfielder({required super.firstname});
  @override
  String toString() {
    // TODO: implement toString
    return "$firstname - $midfielder";
  }
}

class Striker extends FootBallPlayer {
  String strinker = 'нападающий';
  Striker({required super.firstname});
  @override
  String toString() {
    // TODO: implement toString
    return "$firstname - $strinker";
  }
}

six() {
  List<String> lineOne = ['  ', '  ', '  '];
  List<String> lineTwo = ['  ', '  ', '  '];
  List<String> lineThree = ['  ', '  ', '  '];
  print('крестики и нолики ');
  print('Первый игрок X ');
  print('Второй игрок O ');
  func(xOrO) {
    print('Выберите строку: ');
    String stroka = stdin.readLineSync()!.toLowerCase();
    print('Выберите столбец: ');
    String stolb = stdin.readLineSync()!.toLowerCase();
    int stolbik = int.parse(stolb) - 1;

    if (xOrO == 1) {
      if (stroka == '1') {
        if (lineOne[stolbik] == '  ') {
          lineOne[stolbik] = 'X';
        } else {
          print('занято ходите заново');
          func(1);
        }
      } else if (stroka == '2') {
        if (lineTwo[stolbik] == '  ') {
          lineTwo[stolbik] = 'X';
        } else {
          print('занято ходите заново');
          func(1);
        }
      } else if (stroka == '3') {
        if (lineThree[stolbik] == '  ') {
          lineThree[stolbik] = 'X';
        } else {
          print('занято ходите заново');
          func(1);
        }
      }
    }
    if (xOrO == 2) {
      if (stroka == '1') {
        if (lineOne[stolbik] == '  ') {
          lineOne[stolbik] = 'O';
        } else {
          print('занято ходите заново');
          func(2);
        }
      } else if (stroka == '2') {
        if (lineTwo[stolbik] == '  ') {
          lineTwo[stolbik] = 'O';
        } else {
          print('занято ходите заново');
          func(2);
        }
      } else if (stroka == '3') {
        if (lineThree[stolbik] == '  ') {
          lineThree[stolbik] = 'O';
        } else {
          print('занято ходите заново');
          func(2);
        }
      }
    }
  }

  int counter = 0;
  newfunc() {
    print('ходит первый игрок');
    func(1);
    print('ходит второй игрок');
    func(2);
    print('$lineOne\n$lineTwo\n$lineThree');
    counter += 1;
    if (lineThree[0] == 'X' && lineThree[1] == 'X' && lineThree[2] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[0] == 'X' && lineOne[1] == 'X' && lineOne[2] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineTwo[0] == 'X' && lineTwo[1] == 'X' && lineTwo[2] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[0] == 'X' && lineTwo[0] == 'X' && lineThree[0] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[1] == 'X' && lineTwo[1] == 'X' && lineThree[1] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[2] == 'X' && lineTwo[2] == 'X' && lineThree[2] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[0] == 'X' && lineTwo[1] == 'X' && lineThree[2] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineOne[2] == 'X' && lineTwo[1] == 'X' && lineThree[0] == 'X') {
      print('Выйграл первый игрок');
    } else if (lineThree[0] == 'O' &&
        lineThree[1] == 'O' &&
        lineThree[2] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[0] == 'O' && lineOne[1] == 'O' && lineOne[2] == 'O') {
      print('Выйграл первый игрок');
    } else if (lineTwo[0] == 'O' && lineTwo[1] == 'O' && lineTwo[2] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[0] == 'O' && lineTwo[0] == 'O' && lineThree[0] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[1] == 'O' && lineTwo[1] == 'O' && lineThree[1] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[2] == 'O' && lineTwo[2] == 'O' && lineThree[2] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[0] == 'O' && lineTwo[1] == 'O' && lineThree[2] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (lineOne[2] == 'O' && lineTwo[1] == 'O' && lineThree[0] == 'O') {
      print('Выйграл ВТОРОЙ игрок');
    } else if (counter < 9) {
      newfunc();
    } else {
      print('ничья');
    }
  }

  newfunc();
}

void main() {
  first();
  second();
  third();
  forth();
  five();
  six();
}
