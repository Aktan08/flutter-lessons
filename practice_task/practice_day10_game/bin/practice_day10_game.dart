import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:practice_day10_game/practice_day10_game.dart'
    as practice_day10_game;
import 'package:test/scaffolding.dart';

function() {
  print("\tЗагадывайте число от 1 до 100");
  print("Я постараюсь отгадать его за минимальное число попыток.");
  print('Используйте  "greater", "less", "Yes"\n');
  List numbers = [for (var i = 1; i <= 100; i++) i];
  int suggest = 50;
  int counter = 0;
  game() {
    print("Ваше число: ${numbers[suggest - 1]}?");
    counter += 1;
    String yesOrNot = stdin.readLineSync()!.toLowerCase();
    if (yesOrNot == 'yes') {
      print('Я угодал ваше число');
      print('за $counter попыток');
    }
    if (yesOrNot == 'less') {
      numbers.removeRange(suggest, numbers.length);
      suggest = (numbers.length / 2).round();
      game();
    }
    if (yesOrNot == 'greater') {
      numbers.removeRange(0, suggest);
      suggest = (numbers.length / 2).round();
      game();
    }
  }

  game();
  return counter.toString();
}

function2() {
  int counter = 0;
  print("\tКомпьютер загадывает  число от 1 до 100");
  print("Постарайтесь отгадать его за минимальное число попыток.");
  print("Введите число: ");
  int number = Random().nextInt(100);
  usersGame() {
    String num = stdin.readLineSync()!.toLowerCase();
    counter += 1;
    int usersNumber = int.parse(num);
    if (usersNumber == number) {
      print('Вы угодали число');
      print('За $counter попыток');
    } else if (number < usersNumber) {
      print('less');
      usersGame();
    } else if (number > usersNumber) {
      print('greater');
      usersGame();
    }
  }

  usersGame();
  return counter.toString();
}

duel() {
  int sumOfComp = 0;
  int sumOfUser = 0;
  print("""                чтобы изменить количество раундов введите число: 
                оставьте пустым если по умолчанию\n""");
  String str = stdin.readLineSync()!.toLowerCase();

  int? round = int.tryParse(str);
  print(round);
  // ignore: unrelated_type_equality_checks
  if (round != int) {
    round = 3;
  }
  print(round);
  for (var i = 1; i <= round!; i++) {
    sumOfUser += int.parse(function2());
    sumOfComp += int.parse(function());
  }
  if (sumOfUser > sumOfComp) {
    print(
        'Выйграл компьютер \nВаш счет : $sumOfUser\nСчет компьютера: $sumOfComp');
  } else if (sumOfUser < sumOfComp) {
    print('Вы выйграли \nВаш счет : $sumOfUser\nСчет компьютера: $sumOfComp');
  } else {
    print('Ничья \nВаш счет : $sumOfUser\nСчет компьютера: $sumOfComp');
  }
}

void main() {
  print("""\n             Добро пожаловать в игру 'Отгадай число'!""");
  print("""                      Выберите режим игры """);
  print(
      """\nПервое компьютер загадывает число вы угадываете для этого введите 'first'""");
  print(
      """Второе вы загадываете  число компьютер  угадывает для этого введите 'second'""");
  print(
      """Тртее режим дуели по умолчанию 3 раунда чтобы начать введите "third" """);

  String choice = stdin.readLineSync()!.toLowerCase();
  if (choice == 'first') {
    function();
  } else if (choice == 'third') {
    duel();
  } else if (choice == 'second') {
    function2();
  } else {
    print('Ошибка');
  }
}
