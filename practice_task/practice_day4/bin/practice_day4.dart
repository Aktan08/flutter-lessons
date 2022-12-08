import 'dart:math';

import 'package:practice_day4/practice_day4.dart' as practice_day4;

int kvadratchisla(a) {
  //Функция первая
  return a * a;
}

int summachisla(a, b) {
  //Функция вторая
  return a + b;
}

dynamic raznoe(a, b, c) {
  //Функция третяя
  return (a - b) / c;
}

int secundy(a) {
  //Функция Четвертая
  return (a * 60);
}

dynamic pervuyElement(a) {
  return a[0];
}

func(int num) {
  if (num <= 0) {
    return true;
  }
  return false;
}

checker(arra) {
  var dlina = arra.length;
  if (arra[dlina - 1] == arra[dlina - 2]) {
    //Нельзя использовать циклы пришлось так сделать
    return ('ДА');
  } else if (arra[(dlina - 2)] == arra[dlina - 3]) {
    return ('ДА');
  } else if (arra[dlina - 3] == arra[dlina - 4]) {
    return ('ДА');
  } else if (arra[dlina - 4] == arra[dlina - 5]) {
    return ('ДА');
  } else if (arra[dlina - 5] == arra[dlina - 6]) {
    return ('ДА');
  } else if (arra[arra.length - 6] == arra[dlina - 7]) {
    return ('ДА');
  } else {
    return ('Нет');
  }
}

bul(b) {
  if (b == true) {
    return ('Переменная имеет значение: Правда');
  }
  return ("Переменная имеет значение: Ложь");
}

void main() {
  int number1 = Random().nextInt(1000000);
  int number2 = Random().nextInt(1000000);
  int number3 = Random().nextInt(1000000);
  int minuty = Random().nextInt(60) + 1;
  List array = [1, 3, 4, 5, 6];
  bool rocket = true;
  int subziro = Random().nextInt(100) - 50;
  List massive = [1, 2, 7, 7, 8, 4, 5];
  //!!! принимает только семь цифр не больше не меньше!!!
  print('Число: $number1, Число2: $number2, Число3: $number3, Минуты: $minuty');

  print('Первое задние: ${kvadratchisla(number1)}');
  print('Второе задние: ${summachisla(number1, number2)}');
  print('Третее задние: ${raznoe(number1, number2, number3)}');
  print('Четвертое задние: ${secundy(minuty)} секунд');
  print(
      'Пятое задание Первый элемент: ${pervuyElement(array)} со списка List array = [1, 3, 4, 5, 6];');
  print('Шестое задание: ${bul(rocket)}');
  print('Cедьмое задание: Число: $subziro ответ ${func(subziro)}');
  print('Восьмое задание: ${checker(massive)}  ');
}
