import 'dart:async';
import 'dart:ffi';

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

  Reader vasya = Reader(
      birthday: '08.08.2000',
      fio: 'vasya',
      faculty: 'krsu',
      num: 13,
      number: 07000000);

  Book pushkin =
      Book(authorName: 'Пушкин', names: ['Saltan', 'Onegin', 'lukomore']);
  Book remark = Book(
      authorName: 'Remark', names: ['arka', 'towarlish', 'zhinishv zaymy']);
  vasya.takeBookCount(2);
  vasya.takeBookName([pushkin, remark]);
  vasya.returnBookCount(2);
  vasya.returnBookName([pushkin, remark]);
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

class Reader {
  String fio;
  int num;
  String faculty;
  String birthday;
  int number;

  takeBookCount(int bookCount) {
    print('$fio взял $bookCount книг');
  }

  takeBookName(List<Book> books) {
    print('$fio взял $books книг');
  }

  returnBookCount(int bookCount) {
    print('$fio взял $bookCount книг');
  }

  returnBookName(List<Book> books) {
    print('$fio взял $books книг');
  }

  Reader(
      {required this.fio,
      required this.num,
      required this.faculty,
      required this.birthday,
      required this.number});
}

class Book {
  List names;
  String authorName;
  Book({required this.authorName, required this.names});
  @override
  String toString() {
    return '$names,$authorName';
  }
}
