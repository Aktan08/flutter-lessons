import 'package:practice_day12/practice_day12.dart' as practice_day12;
import 'dart:math';

void main() {
  print(Toyota());
  print(ToyotaSecond());
  print(ToyotaThird());
}

class Card {
  int value;
  String suite;
  String name;

  Card({required this.suite, required this.value, required this.name});
}

class Ace extends Card {
  Ace({required String suite, required int value, required String name})
      : super(suite: suite, value: value = 11, name: name);
}

class King extends Card {
  King({required String suite, required int value, required String name})
      : super(suite: suite, value: 10, name: name);
}

class Queen extends Card {
  Queen({required String suite, required int value, required String name})
      : super(suite: suite, value: 10, name: name);
}

class Jack extends Card {
  Jack({required String suite, required int value, required String name})
      : super(suite: suite, value: 10, name: name);
}

class NumberCard extends Card {
  NumberCard({required String suite, required int value, required String name})
      : super(suite: suite, value: value, name: name);
}

class Father {
  String righthand;
  String karieeyes;
  String asian;
  Father(
      {required this.righthand, required this.asian, required this.karieeyes});
}

class Son extends Father {
  String slavan;
  String lefthand;
  Son({required this.lefthand, required this.slavan, required String karieeyes})
      : super(karieeyes: karieeyes, righthand: lefthand, asian: slavan);
}

class Toyota {
  String power = 'JZ';
  String kuzov = 'zhelezo';
  String podveska = 'Usual';
  String fars = 'Ksenonyvye';
  @override
  String toString() {
    return '$power, $kuzov, $fars, $podveska';
  }
}

class ToyotaSecond extends Toyota {
  @override
  String get power => 'GR';
  @override
  String get podveska => 'pnevmopodveska';
}

class ToyotaThird extends Toyota {
  @override
  String get fars => 'laser';
  @override
  String get kuzov => 'nometal';
}
