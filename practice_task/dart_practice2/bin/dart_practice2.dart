import 'dart:ffi';

import 'package:dart_practice2/dart_practice2.dart' as dart_practice2;

void main() {
  print('1)');

  List list = [ 1, 7, 12, 3, 56, 2, 87, 34, 54];
  print("Первый элемент: "+(list.first).toString());
  print("Второй элемент: "+(list[4]).toString());
  print("Третий элемент: "+(list.last).toString()+'\n');

  print('2)');

  List firstOne = [3, 12, 43, 1, 25, 6, 5, 7];
  List secondOne = [55, 11, 23, 56, 78, 1, 9];
  firstOne.addAll(secondOne);
  print("Общий список: $firstOne\n");

  print('3)');

  List flutterList = ['a','d','F','l','u','t','t','e','R','y','3','b','h','j'];

  print(flutterList.getRange(2, 9).toString()+'\n');

  print('4)');

  List massive = [1, 2, 3, 4, 5, 6, 7];
  print(massive.toString()+'\n');

  print('5)');

  List dart = ['601 123', 2, "dart", 45, 95, "dart24", 1];
    
    print('1-'+(dart.contains('dart')).toString());
    print('2-'+(dart.contains('951')).toString()+'\n');

  print('6)');

  List newlist = ['post', 1, 0, 'flutter'];
  String myDart = 'Flutter';
  myDart.toLowerCase();

  print(newlist.contains(myDart));

  print('7)');
  List english =['I','Started',"Learn","Flutter","Since","April"];
  String myFlutter = english.join('*');
  print(myFlutter);

  print('8)');

  List  ints = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  ints.sort();

  print(ints);

   }

