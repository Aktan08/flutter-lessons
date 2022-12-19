import 'dart:async';

import 'package:practice_day11/practice_day11.dart' as practice_day11;

void main() {
  //Первое задание
  Country kg = Country(name: 'KG', climat: 'Tropikal');
  kg.printName();

  //Второе задание
  Car ferarry =
      Car(power: 'supercar', color: 'red', name: 'Ferrary', price: 250000);
  ferarry.printcharacter();

  //Третее задание
  Phone s = Phone(number: 0700123123, model: 'Samsung', weigth: 4);
  Phone i = Phone(number: 0555999999, model: 'Iphone', weigth: 3);
  Phone m = Phone(number: 0999090909, model: 'xiami', weigth: 5);
  print('$s $i $m');
  s.receiveCall("Артем");
  s.getNumber();

  i.receiveCall("Мирлан");
  i.getNumber();

  m.receiveCall("Айбек");
  m.getNumber();

  Phone h = Phone(number: 808080, model: 'huawei', weigth: 5);
  h.sendMessage([s.getNumber(), i.getNumber(), m.getNumber()]);
}

class Country {
  String name;
  String climat;

  void printName() {
    print('$name $climat');
  }

  Country({required this.name, required this.climat});
}

class Car {
  String power;
  String color;
  String name;
  int price;
  void printcharacter() {
    print('$power, $color, $name, $price');
  }

  Car(
      {required this.power,
      required this.color,
      required this.name,
      required this.price});
}

class Phone {
  int number;
  String model;
  int weigth;
  receiveCall(name) {
    print('Звонит $name');
  }

  getNumber() {
    print('$number \n');
  }

  sendMessage(List list) {
    for (int i = 0; i > list.length; i++) {
      print(list[i]);
    }
  }

  Phone({
    required this.number,
    required this.model,
    required this.weigth,
  });
}
